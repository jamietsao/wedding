package com.jamietsao.wedding.model;

import java.util.Date;

import org.apache.commons.lang3.StringEscapeUtils;
import org.apache.commons.lang3.StringUtils;

/**
 * Model representing a single guestbook entry
 * 
 * @author jamietsao
 */
public class GuestbookEntry {

    Integer id;
    String message;
    String name;
    String location;
    Date date;

    public GuestbookEntry(String message, String name, String location, Date date) {
        this(null, message, name, location, date);
    }

    public GuestbookEntry(Integer id, String message, String name, String location, Date date) {
        this.id = id;
        this.message = message;
        this.name = name;
        this.location = location;
        this.date = date;
    }

    public String getMessageForDisplay() {
        // escape HTML entities (to prevent injection), then replace newlines with <br />
        return StringEscapeUtils.escapeHtml4(this.message).replaceAll("\r\n|\n\r|\r|\n", "<br />");
    }

    public String getNameForDisplay() {
        // escape HTML entities (to prevent injection)
        return StringEscapeUtils.escapeHtml4(this.name);
    }
    
    public String getLocationForDisplay() {
        return (StringUtils.isBlank(this.location) ? "" : " - " + this.location);
    }
    
    //
    // Getters/Setters
    //
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    
    public String getMessage() {
        return message;
    }
    
    public void setMessage(String message) {
        this.message = message;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getLocation() {
        return location;
    }
    
    public void setLocation(String location) {
        this.location = location;
    }
    
    public Date getDate() {
        return date;
    }
    
    public void setDate(Date date) {
        this.date = date;
    }
}
