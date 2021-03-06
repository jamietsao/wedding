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
        <jsp:param name="currentPage" value="rsvp" />
      </jsp:include>
      <jsp:include page="include_menu.jsp">
        <jsp:param name="currentPage" value="rsvp" />
      </jsp:include>
      <div id="content-wrap">
        <div id="content">
          <div id="main">
            <div class="title"><img src="images/title_rsvp.gif" /></div>
            <div class="dinner-menu">
              <h3>Dinner</h3>
              <p>
                <b><i>Starter</i></b><br />
                Baby Mixed Greens with Maui Onions, Fresh Tomatoes, and Sliced Papaya<br />
                <i>with Papaya Seed Dressing</i>
              <p>
              <p>
                <b><i>Entree</i></b><br />
                Filet of Beef and Sauteed Breast of Chicken<br />
                <i>Wild Mushroom Sauce with Potato Gnocchi and Fresh Vegetables</i><br />
                <b><i>or</i></b><br />
                Beef Medallion and Fresh Opakapaka<br />
                <i>Wasabi Red Wine Sauce and Herb Garlic Cream<br />
                with Vegetables and Buttered Linguine Pasta</i>
              <p>
              <p>
                <b><i>Dessert</i></b><br />
                Wedding Cake
              <p>
            </div>
            <div class="rsvp">
              <div id="rsvp-form-div">
                <form id="rsvp-form" method="post">
                  <p>
                    <center>
                    <b><i>
                    Please RSVP by April 15th, 2008
                    </i></b>
                    </center>
                    <br />
                  </p>
                  <p>
                    Kindly indicate if you (and any guests) will be attending.  Please complete one entry at a time.
                  </p>
                  <p>
                    <label>Full Name:</label><input id="name" name="name" type="text" size="30" maxlength="100" /><br />
                  </p>
                  <p>
                    <label>Attending:</label><input name="attending" type="radio" value="Y" onclick="enableEntreeFields();" /><span style="margin: 0px 5px 0px 5px"><b>Yes</b></span><input name="attending" type="radio" value="N" onclick="disableEntreeFields();"/><span style="margin: 0px 5px 0px 5px"><b>No</b></span><br />
                  </p>
                  <p>
                    <label>Dinner Entree:</label><input id="chicken_entree" name="entree" type="radio" value="C" /><span style="margin: 0px 5px 0px 5px"><b>Beef and Chicken</b></span><input id="fish_entree" name="entree" type="radio" value="S" /><span style="margin: 0px 5px 0px 5px"><b>Beef and Fish</b></span><br />
                  </p>
                  <p>
                    <input type="button" class="button" name="save" value="RSVP" onclick="rsvp('/rsvp')" />
                  </p>
                </form>
              </div>
              <div id="rsvp-message" style="display:none">
                <p>
                  Thank you for your response!  Click <a href="#" onclick="showRSVPForm();">here</a> to RSVP for another guest!
                <p>
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
