<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="page-title.xsl"/>
<xsl:import href="navigation.xsl"/>
<xsl:import href="date-time.xsl"/>

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:variable name="is-logged-in" select="/data/events/login-info/@logged-in"/>

<xsl:template match="/">

<html>
<head>
	<title>
		<xsl:call-template name="page-title"/>
	</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- 1140px Grid styles for IE -->
		<!-- enable HTML5 elements in IE7+8 -->
		<!--[if lte IE 9]>
		<link rel="stylesheet" href="{$workspace}/css/ie.css" type="text/css" media="screen" />
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

		<!-- Your styles -->
		<link rel="stylesheet" href="{$workspace}/css/style.css" type="text/css" media="screen" />

		<!--css3-mediaqueries-js - http://code.google.com/p/css3-mediaqueries-js/ - Enables media queries in some unsupported browsers-->
		<script src="http://css3-mediaqueries-js.googlecode.com/files/css3-mediaqueries.js"></script>

		<link rel="icon" type="images/png" href="{$workspace}/images/icons/bookmark.png" />
		<link rel="alternate" type="application/rss+xml" href="{$root}/rss/" />


</head>
<body id="{$current-page}">

  <div class="container">
	<div class="row">	
		<div class="twelvecol last">
			<header>
				<h1>Sound<b>Toxins</b>.org</h1>
			</header>
		</div> 
	</div>   
  </div>

                
                
<div id="page" class="container">
	<div class="row">	
		<div class="twelvencol last">
				 <nav role="navigation">
					<ul>
						<li class="nav-home"><a href="/soundtoxins/">Home</a></li>
						<li class="nav-about"><a href="/soundtoxins/about/">About</a></li>
						<li class="nav-sampling-sites"><a href="/soundtoxins/sampling-sites/">Sampling Sites</a></li>
						<li class="nav-partners"><a href="/soundtoxins/partners/environmental-educators/">Partners</a></li>
						<li class="nav-data"><a href="https://www.webapps.nwfsc.noaa.gov/apex_bolt/f?p=264:1">Data</a></li>
						<li class="nav-outreach"><a href="/soundtoxins/outreach/">Outreach</a></li>
						<li class="nav-links"><a href="/soundtoxins/links/">Links</a></li>
					</ul>
				  </nav>			
			<img class="header-image" src="{$workspace}/img/header_hetero.png" alt="" />
		</div>
	</div>	    
        <div class="row">
			<div class="onecol">
			</div>

<xsl:apply-templates/>

			<div class="onecol last">
			</div>	
        </div>
	<div class="row">
	  <footer>
		<div class="onecol">
		</div>			
		<div class="fivecol">
		
		<h4 style="margin-botton: 6rem;">SoundToxins.org hosted and maintained by:</h4>
<img class="logo" src="{$workspace}/img/noaa_logo.png" alt="NOAA" />
<div class="vcard nwfsc">
 <div class="org">Northwest Fisheries Science Center</div>
 <div class="adr">
  <div class="street-address">2725 Montlake Blvd. E.</div>
  <span class="locality">Seattle</span>, 
  <span class="region">WA</span>
  <span class="postal-code">98112</span>
 </div>
</div>

<p><a href="http://www.noaa.gov/privacy.html" target="_blank">Privacy Policy</a> | <a href="http://www.noaa.gov/disclaimer.html" target="_blank">Disclaimer</a></p>


		</div>
		<div class="fivecol">
		<h4>Contacts:</h4>
<div class="vcard">
 <div class="fn">Dr. Vera Trainer &#8212; Program Director</div>
 <a class="email" href="mailto:vera.l.trainer@noaa.gov">vera.l.trainer@noaa.gov</a> &#124;
 <span class="tel">206-860-6788</span>
</div>



<div class="vcard">
 <div class="fn">Teri King and Janis McNeal &#8212; Program Coordinators</div>
 <a class="email" href="mailto:soundtox@uw.edu">soundtox@uw.edu</a> &#124;
 <span class="tel">360-432-3054</span>
</div>

		
		</div>
		<div class="onecol last">
		</div>			
		</footer>
	</div>
    </div>    
	</body>
</html>

</xsl:template>

</xsl:stylesheet>