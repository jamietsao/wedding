package com.jamietsao.wedding.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.skife.jdbi.v2.StatementContext;
import org.skife.jdbi.v2.tweak.ResultSetMapper;

import com.jamietsao.wedding.model.GuestbookEntry;

/**
 * ResultSetMapper for GuestbookEntry object
 * 
 * @author jamietsao
 */
public class GuestbookEntryMapper implements ResultSetMapper<GuestbookEntry> {

    public GuestbookEntry map(int index, ResultSet r, StatementContext ctx) throws SQLException {
        return new GuestbookEntry(r.getInt("id"), r.getString("message"), r.getString("name"), 
                                  r.getString("location"), r.getDate("date"));
    }
}
