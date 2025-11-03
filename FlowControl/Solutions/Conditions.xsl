<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes"/>
  <xsl:template match="/">
    <Results>
      <Names>
      <xsl:for-each select="//Name">
          <Name>
            <xsl:if test="@Title">
              <Title><xsl:value-of select="@Title"/></Title>
            </xsl:if>
            <FName><xsl:value-of select="FirstName"/></FName>
            <LName><xsl:value-of select="LastName"/></LName>
          </Name>
      </xsl:for-each>
      </Names>
      <Matches>
        <xsl:for-each select="//*[text()[normalize-space()]]">
          <xsl:choose>
            <xsl:when test="contains(.,'Webucator')">
              <Match Text="W"><xsl:value-of select="name()"/>: <xsl:value-of select="text()"/></Match>
            </xsl:when>
            <xsl:when test="contains(.,'Woodlock &amp; Woodlock')">
              <Match Text="W&amp;W"><xsl:value-of select="name()"/>: <xsl:value-of select="text()"/></Match>
            </xsl:when>
            <xsl:otherwise>
              <NoMatch><xsl:value-of select="name()"/>: <xsl:value-of select="text()"/></NoMatch>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:for-each>
      </Matches>
    </Results>
  </xsl:template>
</xsl:stylesheet>