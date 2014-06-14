<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <title>ranee and jamie</title>
    <link rel="stylesheet" href="css/wedding.css" type="text/css" />
    <link rel="stylesheet" href="litebox/css/lightbox.css" type="text/css" media="screen" />
    <script type="text/javascript" src="js/wedding.js"></script>
    <script type="text/javascript" src="js/prototype.js"></script>
    <!-- prototype.lite.js conflicts with prototype.js, so use original library
    <script type="text/javascript" src="litebox/js/prototype.lite.js"></script>
     -->
    <script type="text/javascript" src="litebox/js/moo.fx.js"></script>
    <script type="text/javascript" src="litebox/js/litebox-1.0.js"></script>
  </head>

  <body onload="initLightbox()">
    <div id="wrap">
      <jsp:include page="include_header.jsp">
        <jsp:param name="currentPage" value="welcome" />
      </jsp:include>
      <jsp:include page="include_menu.jsp">
        <jsp:param name="currentPage" value="welcome" />
      </jsp:include>
      <div id="content-wrap">
        <div id="content">
          <div id="main">
            <div class="title"><img src="images/title_welcome.gif" /></div>
            <h3 class="dashed">Aloha!</h3>
            <p>
              <a href="images/cozumel.jpg" rel="lightbox" title="One of our favorite places"><img src="images/aloha_small.jpg" title="aloha!" class="float-right" /></a>
              In case you haven't heard, we got <a href="our_story.html">engaged</a> last May!  After researching local options and looking at a couple of sites here in the Bay Area, nothing felt "just right".  So with the encouragement of our wonderful friends and family, we finally decided:
            </p>
            <p style="margin: 20px">
              <center><h2>WE'RE GETTING MARRIED IN HAWAII!!!</h2></center>
            </p>
            <br />
            <h3 class="dashed">Our Site</h3>
            <p style="clear: both">
              To make things more personal, we decided to build our own wedding site.  Hope you enjoy the pictures and a closer look into our lives.  We are so grateful for all of our friends and family - we wouldn't be here without your love and support.  We look forward to celebrating with you on our special day in June!  Please check back periodically for updates and new info.
            </p>
            <p class="align-right">
              <i>- Ranee and Jamie</i>
            </p>
          </div>
        </div>
      </div>
      <jsp:include page="include_footer.jsp" />
    </div>
    <jsp:include page="include_google_analytics.jsp" />
  </body>
</html>
