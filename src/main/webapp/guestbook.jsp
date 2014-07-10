<%@page import="com.jamietsao.wedding.model.GuestbookEntry"%>
<%@page import="java.util.Iterator"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <title>ranee and jamie</title>
    <link rel="stylesheet" href="css/wedding.css" type="text/css" />
    <link rel="stylesheet" href="litebox/css/lightbox.css" type="text/css" media="screen" />
    <script type="text/javascript" src="js/prototype.js"></script>
    <script type="text/javascript" src="js/scriptaculous.js?load=effects"></script>
    <script type="text/javascript" src="js/wedding.js"></script>
    <!-- prototype.lite.js conflicts with prototype.js, so use original library
    <script type="text/javascript" src="litebox/js/prototype.lite.js"></script>
     -->
    <script type="text/javascript" src="litebox/js/moo.fx.js"></script>
    <script type="text/javascript" src="litebox/js/litebox-1.0.js"></script>
  </head>

  <body onload="initLightbox()">
    <div id="wrap">
      <jsp:include page="include_header.jsp">
        <jsp:param name="currentPage" value="guestbook" />
      </jsp:include>
      <jsp:include page="include_menu.jsp">
        <jsp:param name="currentPage" value="guestbook" />
      </jsp:include>
      <div id="content-wrap">
        <div id="content">
          <div id="main">
            <div class="post">
              <div class="title"><img src="images/title_guestbook.gif" /></div>
              <p>
                <input id="guestbook-toggle" type="button" class="button" value="Sign Guest Book" onclick="toggleGuestbookForm()" />
              </p>
              <div id="guestbook-form-div">
                <form id="guestbook-form" method="post" action="">
                  <p>
                    <label>Name</label>
                    <input id="name" name="name" type="text" size="30" maxlength="100" />
                    <label>Location</label>
                    <input id="location" name="location" type="text" size="30" maxlength="100" />
                    <label>Message</label>
                    <textarea id="message" name="message"></textarea>
                    <br />
                    <input type="button" class="button" name="save" value="Done" onclick="saveGuestbookEntry('/guestbook', 'entries')" />
                  </p>
                </form>
                <script type="text/javascript">
                  $('guestbook-form-div').toggle();
                </script>
              </div>
              <div id='entries'>
              <% 
                  Iterator<GuestbookEntry> iter = (Iterator<GuestbookEntry>) request.getAttribute("entries");
                  while (iter.hasNext()) {
                      GuestbookEntry entry = iter.next();
              %>
                <p class="post-body">
                  <%= entry.getMessageForDisplay() %>
                </p>
                <p class="post-footer align-right">
                  <span class="person">Posted by <%= entry.getNameForDisplay() %><%= entry.getLocationForDisplay() %></span>
                  <span class="date"><%= entry.getDate() %></span>
                </p>
                <%
                    } // end while
                %>
              </div>
            </div>
          </div>
        </div>
      </div>
      <jsp:include page="include_footer.jsp" />
    </div>
    <jsp:include page="include_google_analytics.jsp" />
  </body>
</html>