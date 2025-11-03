<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="child::beatles/child::beatle">
        <xsl:value-of select="attribute::link"/>
    </xsl:template>
</xsl:stylesheet>