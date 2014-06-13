<%
  // get current page
  String currentPage = request.getParameter("currentPage");
  
%>

<div id="menu">
  <ul>
    <li><a href="welcome.jsp" id="<%= currentPage.equals("welcome") ? "current" : "" %>">welcome</a></li>
    <li><a href="our_story.jsp" id="<%= currentPage.equals("story") ? "current" : "" %>">our story</a></li>
    <li><a href="wedding_details.jsp" id="<%= currentPage.equals("details") ? "current" : "" %>">wedding details</a></li>
    <li><a href="wedding_party.jsp" id="<%= currentPage.equals("party") ? "current" : "" %>">wedding party</a></li>
    <li><a href="registry.jsp" id="<%= currentPage.equals("registry") ? "current" : "" %>">registry</a></li>
    <li><a href="guestbook.jsp" id="<%= currentPage.equals("guestbook") ? "current" : "" %>">guest book</a></li>
  </ul>
</div>
