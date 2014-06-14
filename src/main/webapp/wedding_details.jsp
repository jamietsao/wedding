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
        <jsp:param name="currentPage" value="details" />
      </jsp:include>
      <jsp:include page="include_menu.jsp">
        <jsp:param name="currentPage" value="details" />
      </jsp:include>
      <div id="content-wrap">
        <div id="content">
          <div id="main">
            <div class="title"><img src="images/title_details.gif" /></div>
            <center>
              <h3>Ceremony</h3>
              <p>
                Sunday, June 29th, 2008<br />
                4:00 PM<br />
                <a href="http://www.moana-surfrider.com" target="new">Westin Moana Surfrider</a><br />
                Honolulu, Hawaii<br />
              </p>
              <p>
                <i><b>Cocktail Hour and Reception to immediately follow</b></i><br />
                <i><b>Island Cocktail Attire</b></i>
              </p>
              <br />
              <h3>"Welcome to Da Islands!" Cocktail Hour</h3>
              <p>
                Saturday, June 28th, 2008<br />
                Early Afternoon <i>(Specific time TBA)</i><br />
                <a href="http://www.princess-kaiulani.com" target="new">Sheraton Princess Kaiulani Hotel</a><br />
                Pikake Terrace<br />
              </p>
              <br />
              <h3>Accomodations</h3>
              <p>
                <a href="http://www.princess-kaiulani.com" target="new">Sheraton Princess Kaiulani Hotel</a><br />
                120 Kaiulani Avenue<br />
                Honolulu, HI 96815<br />
              <p>
              <p style="width:400px" class="align-left">
                The Princess Kaiulani is <a href="images/waikiki.jpg" target="newWindow">across the street</a> from the Moana Surfrider (in the heart of Waikiki).
                We have rooms blocked at this hotel for a special group rate of $145 per night, between 6/25 - 7/2.
                <!--
                Book here: <a href="http://www.starwoodmeeting.com/StarGroupsWeb/res?id=0708175161&key=9DA31" target="new">Reservations</a>
                -->
                <br /><br />
                <b><i>Please call the Reservations line at (866) 716-8109 to book your rooms.  Be sure to mention the "Tien and Tsao" wedding.</i></b>
              <p>
              <!--
              <p style="width:400px" class="align-left">
                Here's a good map of Waikiki for reference and other hotel choices:
                <a href="images/waikiki.jpg" target="new">Map</a>
              </p>
              -->
            </center>
          </div>
        </div>
      </div>
      <jsp:include page="include_footer.jsp" />
    </div>
    <jsp:include page="include_google_analytics.jsp" />
  </body>
</html>
