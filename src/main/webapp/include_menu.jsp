<%
  // get current page
  String currentPage = request.getParameter("currentPage");
%>

<div id="menu">
  <ul>
    <li><a href="/welcome" id="<%= currentPage.equals("welcome") ? "current" : "" %>">welcome</a></li>
    <li><a href="/our-story" id="<%= currentPage.equals("story") ? "current" : "" %>">our story</a></li>
    <li><a href="/wedding-details" id="<%= currentPage.equals("details") ? "current" : "" %>">wedding details</a></li>
    <li><a href="/wedding-party" id="<%= currentPage.equals("party") ? "current" : "" %>">wedding party</a></li>
    <li><a href="/rsvp" id="<%= currentPage.equals("rsvp") ? "current" : "" %>">rsvp</a></li>
    <li><a href="/registry" id="<%= currentPage.equals("registry") ? "current" : "" %>">registry</a></li>
    <li><a href="/guestbook" id="<%= currentPage.equals("guestbook") ? "current" : "" %>">guestbook</a></li>
  </ul>
</div>
