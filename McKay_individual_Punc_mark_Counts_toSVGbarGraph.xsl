<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    
    <!-- Defining Variables -->
    <xsl:variable name="numPunc" select="count(distinct-values(//punc/@type))"/>
    <xsl:variable name="barWidth" select="25"/>
    <xsl:variable name="XSpacer" select="50"/>
    <xsl:variable name="max_Xvalue" select="$numPunc * ($barWidth + $XSpacer)"/>
    
    <xsl:variable name="YSpacer" select="-5"/>
    <xsl:variable name="max_punc_value" select="104"/>
    <xsl:variable name="max_Yvalue" select="$YSpacer * $max_punc_value"/>
        
    <xsl:template match="/">
        <svg width="1000" height="1100" viewbox="0 0 1500 1500">
            <g transform="translate(400 700)">
      <!-- Scratchpad -->          
      <xsl:comment>The number of different punctuations is:
      <xsl:value-of select="$numPunc"/></xsl:comment>
      <xsl:comment>The max value of X is: 
      <xsl:value-of select="$max_Xvalue"/></xsl:comment>
      <xsl:comment>The max value of Y is:
      <xsl:value-of select="$max_Yvalue"/></xsl:comment>
      
      <!-- X-axis Line -->
      <line x1="0" y1="0" x2="{$max_Xvalue + $XSpacer}" y2="0" stroke="black" stroke-width="2"/>       
      
      <!-- Y-axis Line -->
       <line x1="0" y1="0" x2="0" y2="{$max_Yvalue}" stroke="black" stroke-width="2"/>
          
   <xsl:for-each select="//punc[@type='comma']">
      <xsl:variable name="xPos" select="position()"/> 
      <xsl:comment>What is the value of xPos?
      <xsl:value-of select="$xPos"/></xsl:comment> 
       
   </xsl:for-each>
            
        
            
            </g>
        </svg>
    </xsl:template>
    
</xsl:stylesheet>