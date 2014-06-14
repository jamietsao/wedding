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
        <jsp:param name="currentPage" value="story" />
      </jsp:include>
      <jsp:include page="include_menu.jsp">
        <jsp:param name="currentPage" value="story" />
      </jsp:include>
      <!-- content-wrap starts here -->
      <div id="content-wrap">
        <div id="content">
          <div id="main">
            <div class="title"><img src="images/title_story.gif" /></div>
            <h3 class="dashed">How We Met</h3>
            <p>
              <i><strong>Ranee's Version:</strong></i><br />
              I scoped Jamie out on our first day of orientation for APhiO (back in 1996). I thought, "Dang, who's that hottie?" Jamie and I became friends that semester, and that's ALL. He didn't have time for me because he was too busy being the big player on campus. So we were "just friends" for the longest time ...
            </p>
            <p>
              <i><strong>Jamie's Version:</strong></i><br />
              Ok, here's the truth: I met Ranee back in college at Berkeley (waaaay back in 1996). I had a HUGE crush on her (I think it was her goofy smile that got me). Well instead of telling me that she had a boyfriend, Ranee led me on and played me like a sucka. Needless to say, my heart was broken but it was a blessing in disguise because we became close friends thereafter. 9 years later, destiny played its role and now we're getting married.
            </p>
            <h3 class="dashed">How We Got Engaged</h3>
            <p>
              <a href="images/engagement_spot.jpg" rel="lightbox" title="Where she said yes ... (the morning after)"><img src="images/engagement_spot_small.jpg" title="Where she said yes" class="float-left" /></a>
              Being the ultimate romantics that we are, Ranee and I never spoke a word about marriage (we're both from the school of "If it's meant to be, it's meant to be"). With our trip to Europe less than a month away, I decided I was going to tell Ranee that I wanted to spend the rest of my life with her. So I took a crash course in Diamonds 101, bought the perfect ring, and concocted a foolproof plan for carrying the ring with me throughout Italy without any gypsy mishaps!
            </p>
            <p>
              Halfway through our trip, we found ourselves along a road overlooking the coast in Cinque Terre, Italy. I knew it was the perfect moment, so I got down on one knee, and the rest is history ...
            </p>
          </div>
        </div>
      </div>
      <jsp:include page="include_footer.jsp" />
    </div>
    <jsp:include page="include_google_analytics.jsp" />
  </body>
</html>
