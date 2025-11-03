<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" version="1.0"/>
    <xsl:template match="name">
        <Matches>
            <Match>
                <xsl:attribute name="Name">
                    <xsl:value-of select="firstname"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="lastname"/>
                </xsl:attribute>We found a name!</Match>
        </Matches>
    </xsl:template>
</xsl:stylesheet>