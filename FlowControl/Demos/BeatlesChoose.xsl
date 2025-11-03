<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">
  <html>
    <head>
      <title>Beatles</title>
    </head>
    <body>
      <table>
      <tr>
        <th>First Name</th>
        <th>Last Name</th>
      </tr>
      <xsl:for-each select="beatles/beatle">
        <xsl:sort select="name/lastname" />
        <xsl:choose>
          <xsl:when test="not(@real='no')">
            <tr class="real">
              <td><xsl:value-of select="name/firstname"/></td>
              <td><xsl:value-of select="name/lastname"/></td>
            </tr>
          </xsl:when>
          <xsl:otherwise>
            <tr class="fake">
              <td><del><xsl:value-of select="name/firstname"/></del></td>
              <td><del><xsl:value-of select="name/lastname"/></del></td>
            </tr>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>