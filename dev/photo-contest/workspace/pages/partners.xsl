<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/typography.xsl"/>
 

<xsl:template match="data">
<div class="threecol">
   <div class="sidebar {$category}">
      <xsl:apply-templates select="partner-categories/entry"/>
   </div>
</div>
<div class="sevencol">
      <xsl:apply-templates select="partners/category"/>
</div>
</xsl:template>


<xsl:template match="partner-categories/entry">

   <h5><a href="{$root}/{$root-page}/{category/@handle}"><xsl:value-of select="category"/></a></h5>

</xsl:template>


<xsl:template match="partners/category">

   <h3 id="{@link-handle}"><xsl:value-of select="@value"/></h3>
   <xsl:apply-templates select="entry"/>

</xsl:template>



<xsl:template match="entry">

      <xsl:choose>
         <xsl:when test="website">
            <h4><a href="{website}"><xsl:value-of select="name"/></a></h4>
         </xsl:when>
      <xsl:otherwise>
         <h4><xsl:value-of select="name"/></h4>
      </xsl:otherwise>
      </xsl:choose>
 
   <xsl:if test="image">
      <img src="{$workspace}{image/@path}/{image/filename}" style="float: left; width: 33%; margin: 10px 20px 10px 0;" alt=""/>
   </xsl:if>
   <xsl:apply-templates select="description/*[position() &lt;= 2]" mode="html"/>
   <xsl:if test="participants">
      <h5>Participants</h5>
      <p><xsl:value-of select="participants"/></p>
   </xsl:if>

</xsl:template>


</xsl:stylesheet>