<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
   <!--2017-12-07 ebb: This is an XSLT to process a collection of poems from a file directory into a single XML file following the requirements for the Harlem Renaissance project. --> 
   
    <!-- 2017-12-08 kes: Thank you! I really appreciate this! -->
    
    <xsl:output method="xml" indent="yes"/>
    <xsl:variable name="JohnsonColl" select="collection('Johnson')"/>
    <xsl:template match="/">
        <poemCollection poet="{($JohnsonColl/poem/title)[1]/@poet}">
            <xsl:for-each select="$JohnsonColl/poem">
                <xsl:copy-of select="."/>
            </xsl:for-each>
        </poemCollection>
    </xsl:template>
    
</xsl:stylesheet>