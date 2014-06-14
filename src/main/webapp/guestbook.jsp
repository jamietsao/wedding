<?php
  // connect to database
  include 'db/config.php';
  include 'db/opendb.php';

  // query all guestbook entries
  $query = "SELECT id,  name, location, message, DATE_FORMAT(date, '%b %d, %Y') FROM guestbook ORDER BY id DESC ";
  $result = mysql_query($query) or die('Error -- query failed: ' . mysql_error());

  // close database
  include 'db/closedb.php';
?>

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
                <form id="guestbook-form" method="POST" action="">
                  <p>
                    <label>Name</label>
                    <input id="name" name="name" type="text" size="30" maxlength="100" />
                    <label>Location</label>
                    <input id="location" name="location" type="text" size="30" maxlength="100" />
                    <label>Message</label>
                    <textarea id="message" name="message"></textarea>
                    <br />
                    <input type="button" class="button" name="save" value="Done" onclick="saveGuestbookEntry('guestbook_insert.html', 'entries')" />
                  </p>
                </form>
                <script type="text/javascript">
                  $('guestbook-form-div').toggle();
                </script>
              </div>
              <div id='entries'>
                <?php
                  // loop through the entries
                  while($row = mysql_fetch_array($result)) {
                    // store each column in variables
                    list($id, $name, $location, $message, $date) = $row;
                    // change all HTML special characters to prevent some nasty code injection
                    $name = htmlspecialchars($name);
                    $message = htmlspecialchars($message);
                    // convert newline characters to HTML break tag ( <br> )
                    $message = nl2br($message);
                    // display guestbook entry
                ?>
                <p class="post-body">
                  <?php echo $message; ?>
                <p>
                <p class="post-footer align-right">
                  <span class="person">Posted by <?php echo $name; ?><?php echo ($location == '' ? '' : ' - '.$location) ?></span>
                  <span class="date"><?php echo $date; ?></span>
                </p>
                <?php
                  } // end while
                ?>
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