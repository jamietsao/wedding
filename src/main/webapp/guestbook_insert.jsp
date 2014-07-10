<%@page import="com.jamietsao.wedding.model.GuestbookEntry"%>

<% 
    GuestbookEntry entry = (GuestbookEntry) request.getAttribute("entry");
%>
<p class="post-body">
  <%= entry.getMessageForDisplay() %>
<p>
<p class="post-footer align-right">
  <span class="person">Posted by <%= entry.getNameForDisplay() %><%= entry.getLocationForDisplay() %></span>
  <span class="date"><%= entry.getDate() %></span>
</p>