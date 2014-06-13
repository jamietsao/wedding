<%
  // get current page

  String photo = null;
  String caption = null;  
  String currentPage = request.getParameter("currentPage");
  if (currentPage.equals("welcome")) {
    photo = "header_welcome";
    caption = "In the city where we fell in love";
  } else if (currentPage.equals("story")) {
    photo = "header_story";
    caption = "On campus where we first met";
  } else if (currentPage.equals("details")) {
    photo = "header_details";
    caption = "The Westin Moana Surfrider";
  } else if (currentPage.equals("party")) {
    photo = "header_party";
    caption = "In our element";
  } else if (currentPage.equals("registry")) {
    photo = "header_registry";
    caption = "";
  } else if (currentPage.equals("guestbook")) {
    photo = "header_guestbook";
    caption = "Come with me ... 'Somewhere I Have Never Travelled'";
  } else if (currentPage.equals("rsvp")) {
    photo = "header_rsvp";
    caption = "Celebrating a special occasion at the Redroom Room";
  }

%>

<div id="header">
  <div id="logo-box">
    <h1 id="logo"><a href="index.html" title="">ranee & jamie</a></h1>
    <h2 id="slogan"></h2>
  </div>
  <div class="headerphoto">
    <a href="<%= "images/" + photo + ".jpg" %>" rel="lightbox" title="<%= caption %>" onmouseover="showEnlargeIcon()" onmouseout="hideEnlargeIcon()">
      <img src="<%= "images/" + photo + "_small.jpg" %>" title="click me!" />
    </a>
  </div>
  <div id="enlargeicon" class="headerphotoicon" style="display:none" onmouseover="showEnlargeIcon()">
    <a href="<%= "images/" + photo + ".jpg" %>" rel="lightbox" title="<%= caption %>">
      <img src="images/enlarge2.gif" />
    </a>
  </div>
</div>
