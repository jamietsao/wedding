package com.jamietsao.wedding.dao;

import java.util.Date;

import org.skife.jdbi.v2.sqlobject.Bind;
import org.skife.jdbi.v2.sqlobject.SqlUpdate;

/**
 * JDBI SQL Object for the 'rsvp' table
 * 
 * @author jamietsao
 */
public interface RSVPDAO {

    @SqlUpdate("INSERT INTO rsvp (name, attending, entree, date) values (:name, :attending, :entree, :date)")
    Integer insert(@Bind("name") String name, @Bind("attending") Character attending, 
                   @Bind("entree") Character entree, @Bind("date") Date date);

}
