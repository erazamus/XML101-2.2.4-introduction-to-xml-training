<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <XPathTests>
            <xsl:apply-templates />
        </XPathTests>
    </xsl:template>
    <xsl:template match="Head">
        <XPathTest>
            <!--OUTPUT: 
            Mr. Joshua Woodlock is from the United States-->
        </XPathTest>
    </xsl:template>
    <xsl:template match="Body">
        <XPathTest>
            <!--OUTPUT:
            Bill Smith works at Webucator, Inc.
            His email is bsmith@webucator.com.
            If you have any questions, feel free to call me at 800-555-1000 x123.-->
        </XPathTest>
    </xsl:template>
    <xsl:template match="Foot">
        <XPathTest>
            <!--OUTPUT:
            VP of Operations: Smith, Bill -->    
        </XPathTest>
    </xsl:template>
</xsl:stylesheet>