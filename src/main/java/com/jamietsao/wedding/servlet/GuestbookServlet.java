package com.jamietsao.wedding.servlet;

import java.io.IOException;
import java.net.URISyntaxException;
import java.util.Date;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jamietsao.wedding.dao.DAOUtil;
import com.jamietsao.wedding.dao.GuestbookDAO;
import com.jamietsao.wedding.model.GuestbookEntry;

/**
 * Servlet that handles requests for the guestbook page
 * 
 * @author jamietsao
 */
@SuppressWarnings("serial")
public class GuestbookServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        try {
            GuestbookDAO dao = DAOUtil.getDAO(GuestbookDAO.class);
            Iterator<GuestbookEntry> entries = dao.findAll();

            req.setAttribute("entries", entries);
            
            getServletContext().getRequestDispatcher("/guestbook.jsp").forward(req, resp);
            return;

        } catch (URISyntaxException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // get POST params
        String message = req.getParameter("message").trim();
        String name = req.getParameter("name").trim();
        String location = req.getParameter("location").trim();

        // create guestbook entry
        GuestbookEntry entry = new GuestbookEntry(message, name, location, new Date());

        try {
            // save to DB
            GuestbookDAO dao = DAOUtil.getDAO(GuestbookDAO.class);
            Integer id = dao.insert(entry);

            // query for newly saved entry
            entry = dao.findById(id);

            req.setAttribute("entry", entry);
            
            getServletContext().getRequestDispatcher("/guestbook_insert.jsp").forward(req, resp);
            return;

        } catch (URISyntaxException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    
}
