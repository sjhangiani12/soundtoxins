<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/typography.xsl"/>
<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="data">
	<div class="sixcol">
           <h3>Partner websites</h3>
           <xsl:apply-templates select="partner-links/entry"/>
        </div>
	<div class="fourcol last">
           <div class="sidebar">
              <xsl:apply-templates select="links/category"/>
           </div>
        </div>
</xsl:template>



<xsl:template match="partner-links/entry">
      <p><a href="{website}"><xsl:value-of select="name"/></a></p>
</xsl:template>

<xsl:template match="links/category">
      <h3><xsl:value-of select="@value"/></h3>
      <xsl:apply-templates select="entry"/>
</xsl:template>

<xsl:template match="entry">
      <p><a href="{link-url}"><xsl:value-of select="link-name"/></a></p>
</xsl:template>

</xsl:stylesheet>