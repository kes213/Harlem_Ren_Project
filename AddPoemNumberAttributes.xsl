<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    
    <xsl:mode on-no-match="shallow-copy"/>   
    
    <xsl:output method="xml" encoding="utf-8"/>
    
    <xsl:template match="line">
        <line n="{count(preceding-sibling::line) + 1}">
            <xsl:apply-templates/>
        </line>
    </xsl:template>
</xsl:stylesheet>