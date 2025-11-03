<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    <xsl:strip-space elements="*" />
    <xsl:template match="name">
        <xsl:value-of select="firstname"/>
        <xsl:value-of select="lastname"/>
    </xsl:template>
</xsl:stylesheet>