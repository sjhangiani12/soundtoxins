<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/typography.xsl"/>
<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="data">

        <xsl:apply-templates select="sampling-sites/entry"/>

</xsl:template>



<xsl:template match="sampling-sites/entry">
	<div class="tencol">

            <!--<h4><xsl:value-of select="description"/></h4>-->
<h3>SoundToxins program sampling sites</h3>

<p>SoundToxins program sampling sites in Puget Sound and the Strait of Juan de Fuca, Washington State and NANOOS (www.nanoos.org)&#160;stations.</p>

	<div class="map-container">		  

<iframe frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps/ms?ie=UTF8&amp;msa=0&amp;msid=217462463901449365373.000477b83646f8a16a1ac&amp;t=p&amp;ll=47.912654,-122.866287&amp;spn=1.559333,1.157684&amp;output=embed"></iframe>


</div>

<p>View <a href="http://maps.google.com/maps/ms?ie=UTF8&amp;msa=0&amp;msid=217462463901449365373.000477b83646f8a16a1ac&amp;t=p&amp;ll=47.912654,-122.866287&amp;spn=1.559333,1.157684&amp;source=embed">SoundToxins</a> in a larger map</p>

	</div>


</xsl:template>

</xsl:stylesheet>