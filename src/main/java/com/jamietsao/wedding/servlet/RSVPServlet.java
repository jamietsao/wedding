package com.jamietsao.wedding.servlet;

import java.io.IOException;
import java.net.URISyntaxException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;

import com.jamietsao.wedding.dao.DAOUtil;
import com.jamietsao.wedding.dao.RSVPDAO;

/**
 * Servlet that handles requests for the rsvp page
 * 
 * @author jamietsao
 */
@SuppressWarnings("serial")
public class RSVPServlet extends HttpServlet {

    private static final Character ATTENDING_YES = 'Y';
    private static final Character ATTENDING_NO = 'N';
    private static final Character ENTREE_CHICKEN = 'C';
    private static final Character ENTREE_SEAFOOD = 'S';
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/rsvp.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // get POST params
        String name = req.getParameter("name");
        String tmp = req.getParameter("attending");
        Character attending = "Y".equals(tmp) ? ATTENDING_YES : ATTENDING_NO;
        tmp = req.getParameter("entree");
        Character entree = null;
        if (!StringUtils.isBlank(tmp)) {
            entree = "C".equals(tmp) ? ENTREE_CHICKEN : ENTREE_SEAFOOD;
        }

        try {
            // save to DB
            RSVPDAO dao = DAOUtil.getDAO(RSVPDAO.class);
            dao.insert(name, attending, entree, new Date());

            return;
        } catch (URISyntaxException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    
}
