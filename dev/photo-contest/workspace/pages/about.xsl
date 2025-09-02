<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/typography.xsl"/>
<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="data">

   <xsl:apply-templates select="about/entry"/>

</xsl:template>



<xsl:template match="about/entry">

   <xsl:choose>
      <xsl:when test="placement/item/@handle='main-column'">
	<div class="sixcol">
 
            <h3><xsl:value-of select="title"/></h3>
		<xsl:apply-templates select="body" mode="html"/>

        </div>
      </xsl:when>
      <xsl:otherwise>
	<div class="fourcol last">
          <div class="sidebar">
            <h3><xsl:value-of select="title"/></h3>
		<xsl:apply-templates select="body" mode="html"/>
	</div>
        </div>
      </xsl:otherwise>
   </xsl:choose>


</xsl:template>

</xsl:stylesheet>