<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    
    <xsl:output method="xml" indent="yes"/>
    
    <!-- X-axis global variables -->
    <xsl:variable name="NumPoets" select="7"/>
    <xsl:variable name="barWidth" select="25"/>
    <xsl:variable name="Xinterval" select="100"/>
    <xsl:variable name="max_Xvalue" select="$NumPoets * ($barWidth + $Xinterval)"/>
    
    <!-- Y-axis global variables -->
    <xsl:variable name="Yinterval" select="-10"/>
    <xsl:variable name="max_Yvalue" select="$Yinterval * 100"/>
    
    <xsl:template match="/">
        <!-- XSLT Scratchpad -->
        <xsl:comment>The max X-value is:
        <xsl:value-of select="$max_Xvalue"/></xsl:comment>
    </xsl:template>
</xsl:stylesheet>