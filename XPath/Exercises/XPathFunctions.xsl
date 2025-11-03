<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <XPathTests>
            <!--Output the value of the FirstName child of the Name elements
                that don't have a Title attribute-->
            <XPathTest><xsl:value-of select="XPATH"/></XPathTest>
            
            <!--Output the street number of Webucator Inc's street address (i.e., 4933)-->
            <XPathTest><xsl:value-of select="XPATH"/></XPathTest>
            
            <!--Output the paragraph text of the paragraph that contains Bill Smith's email address-->
            <XPathTest><xsl:value-of select="XPATH"/></XPathTest>
            
            <!--Output the number of elements contained in Joshua Woodlock's Address-->
            <XPathTest><xsl:value-of select="XPATH"/></XPathTest>
            
            <!--Output the number of elements the contain the word "Woodlock" (should be 3)-->
            <XPathTest><xsl:value-of select="XPATH"/></XPathTest>
            
        </XPathTests>
    </xsl:template>
</xsl:stylesheet>