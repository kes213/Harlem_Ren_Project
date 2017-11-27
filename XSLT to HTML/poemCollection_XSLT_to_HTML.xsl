<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Claude McKay 10-Poem Collection</title>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="poem">
        <h2>
            <xsl:apply-templates select="title"/>
        </h2>
        <p>
            <xsl:apply-templates select="stanza"/>
        </p>
        <a href="Hughes_poemCollection_HTML_output.html"><button>Click here to return to the top of the page.</button></a>
    </xsl:template>
    
    <xsl:template match="stanza">
       <xsl:apply-templates/>
        <br/>
    </xsl:template>
    
    <xsl:template match="stanza/l">
        <xsl:apply-templates/>
    <br/>
    </xsl:template>
    
    <xsl:template match="punc">
        <span class="{@type}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
   
</xsl:stylesheet>