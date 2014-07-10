package com.jamietsao.wedding.dao;

import java.util.Iterator;

import org.skife.jdbi.v2.sqlobject.Bind;
import org.skife.jdbi.v2.sqlobject.BindBean;
import org.skife.jdbi.v2.sqlobject.GetGeneratedKeys;
import org.skife.jdbi.v2.sqlobject.SqlQuery;
import org.skife.jdbi.v2.sqlobject.SqlUpdate;
import org.skife.jdbi.v2.sqlobject.customizers.RegisterMapper;

import com.jamietsao.wedding.model.GuestbookEntry;

/**
 * JDBI SQL Object for the guestbook table
 * 
 * @author jamietsao
 */
@RegisterMapper(GuestbookEntryMapper.class)
public interface GuestbookDAO {

    @SqlUpdate("INSERT INTO guestbook (message, name, location, date) values (:message, :name, :location, :date)")
    @GetGeneratedKeys
    Integer insert(@BindBean GuestbookEntry entry);

    @SqlQuery("SELECT id, message, name, location, date FROM guestbook WHERE id = :id")
    GuestbookEntry findById(@Bind("id") Integer id);
    
    @SqlQuery("SELECT id, message, name, location, date FROM guestbook ORDER BY id DESC")
    Iterator<GuestbookEntry> findAll();

}
