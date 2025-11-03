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
      <xsl:for-each select="beatles/beatle">
        <xsl:sort select="name/lastname" order="descending"/>
        <tr>
        <td><a href="{@link}"><xsl:value-of select="name/lastname"/></a></td>
        <td><a href="{@link}"><xsl:value-of select="name/firstname"/></a></td>
        </tr>
      </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>