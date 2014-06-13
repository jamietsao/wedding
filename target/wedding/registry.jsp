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
        <jsp:param name="currentPage" value="registry" />
      </jsp:include>
      <jsp:include page="include_menu.jsp">
        <jsp:param name="currentPage" value="registry" />
      </jsp:include>
      <div id="content-wrap">
        <div id="content">
          <div id="main">
            <div class="title"><img src="images/title_registry.gif" /></div>
            <br />
            <div class="registry-links">
              We are registered at the following stores:<br /><br />
              <a href="http://www.crateandbarrel.com/gr/guest/viewRegistry.aspx?grid=3606430" target="newWindow"><img src="images/registry_crate_logo.gif"></a>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <a href="http://macys.weddingchannel.com/gvr/guestregistrydetail.action?retailer_registry_uid=304985920&listby=dept" target="newWindow"><img src="images/registry_macys_logo.jpg"></a>
              <br /><br />
              <a href="http://www.bedbathandbeyond.com/regGiftRegistry.asp?order_num=-1&wrn=%2D2092913967" target="newWindow"><img style="padding:10px" src="images/registry_bedbath_logo.gif"></a>
            </div>
            <br />
          </div>
        </div>
      </div>
      <jsp:include page="include_footer.jsp" />
    </div>
    <!--
      // include google analytics
      include("include_google_analytics.html");
    -->
  </body>
</html>
