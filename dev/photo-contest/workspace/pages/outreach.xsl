<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/typography.xsl"/>
<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="data">
	<div class="sixcol">
        <h3>SoundToxins Workshops</h3>
        <xsl:apply-templates select="workshops/entry"/>
        </div>
	<div class="fourcol last">
        <div class="sidebar">
        <h3>Newsletters</h3>
        <xsl:apply-templates select="newsletters/entry"/>
        <h3 style="margin-top: 40px;">Downloads</h3>
        <xsl:apply-templates select="outreach/entry"/>
        </div>
        </div>
</xsl:template>



<xsl:template match="workshops/entry">
		<h5>    
			<xsl:call-template name="format-date">
				<xsl:with-param name="date" select="start-date"/>
				<xsl:with-param name="format" select="'M d, Y'"/>
			</xsl:call-template>
			<xsl:if test="$is-logged-in = 'true'">
                                <xsl:text>  </xsl:text>
				<a class="edit" href="{$root}/symphony/publish/{../section/@handle}/edit/{@id}/">(Edit)</a>
			</xsl:if>
                        <xsl:text> &#8212; </xsl:text>
                        <a href="{$workspace}{agenda/@path}/{agenda/filename}">View the agenda</a>

		</h5>
        <xsl:apply-templates select="summary" mode="html"/>
        <img src="{$workspace}{meeting-image/@path}/{meeting-image/filename}" />
</xsl:template>

<xsl:template match="newsletters/entry">
		<h5>    
			<xsl:call-template name="format-date">
				<xsl:with-param name="date" select="date"/>
				<xsl:with-param name="format" select="'M Y'"/>
			</xsl:call-template>
			<xsl:if test="$is-logged-in = 'true'">
                                <xsl:text>  </xsl:text>
				<a class="edit" href="{$root}/symphony/publish/{../section/@handle}/edit/{@id}/">(Edit)</a>
			</xsl:if>
                        <xsl:text> &#8212; </xsl:text>
                        <a href="{$workspace}{file/@path}/{file/filename}">pdf</a>

		</h5>

</xsl:template>


<xsl:template match="outreach/entry">
   <p><a href="{$workspace}{file/@path}/{file/filename}"><xsl:value-of select="title"/></a></p>
</xsl:template>


</xsl:stylesheet>