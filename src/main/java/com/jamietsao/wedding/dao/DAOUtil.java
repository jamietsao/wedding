package com.jamietsao.wedding.dao;

import java.net.URI;
import java.net.URISyntaxException;

import org.skife.jdbi.v2.DBI;

/**
 * DAO util class
 * 
 * @author jamietsao
 */
public class DAOUtil {

    public static <T> T getDAO(Class<T> clazz) throws URISyntaxException {
 
        // get database URI
        URI dbURI = new URI(System.getenv("DATABASE_URL"));
        
        // parse out user info
        String[] auth = dbURI.getUserInfo().split(":", 2);
        String username = auth[0];
        String password = auth[1];
        
        // construct DB URL
        String dbUrl = "jdbc:postgresql://" + dbURI.getHost() + dbURI.getPath();

        // instantiate DBI instance
        DBI dbi = new DBI(dbUrl, username, password);

        return dbi.onDemand(clazz);
    }
    
}
