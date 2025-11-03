<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" version="1.0"/>
    <xsl:template match="name">
        <xsl:element name="Matches">
            <xsl:element name="Match">We found a name!</xsl:element>
            <xsl:element name="Name">
                <xsl:value-of select="."/>
            </xsl:element>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>