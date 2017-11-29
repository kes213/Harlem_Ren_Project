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
                <title>POET NAME POET NAME POET NAME</title>
            </head>
            <body>
                <h1>The Harlem Renaissance Poetry Project</h1>
                <h2>An Analytical and Linguistic Examination of Poetry Written by Harlem Renaissance Poets</h2>
                <hr/>
                <p><a href="index.html">Home</a> | <a href="about_the_poets.html">About the Poets</a> | <a href="poemCollection.html">Poem Collections</a> | <a href="codinginfo.html">Project Coding Information</a></p>
                <hr/>
                <h1>~ A 10-Poem Collection</h1>
                <p>These poems were hand-selected by the Harlem Renaissance project team.</p>
                <div>
                    <fieldset>
                        <legend>Click to Highlight Specific Punctuation Marks:</legend>
                        <input type="checkbox" id="CommasToggle"/>
                        <span>Commas</span>
                        <input type="checkbox" id="PeriodsToggle"/>
                        <span>Periods</span>
                        <input type="checkbox" id="SemicolonsToggle"/>
                        <span>Semicolons</span>
                        <input type="checkbox" id="ColonsToggle"/>
                        <span>Colons</span>
                        <input type="checkbox" id="Open_PsToggle"/>
                        <span>Open Parentheses</span>
                        <input type="checkbox" id="Closed_PsToggle"/>
                        <span>Closed Parentheses</span>
                        <input type="checkbox" id="Exclamation_PointsToggle"/>
                        <span>Exclamation Points</span>
                        <input type="checkbox" id="Question_MarksToggle"/>
                        <span>Question Marks</span>
                        <input type="checkbox" id="DashesToggle"/>
                        <span>Dashes</span>
                    </fieldset>
                </div>
                <h2>Table of Contents</h2>
                <ul><xsl:apply-templates select="poemCollection" mode="toc"/></ul>
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
        <a href="Spencer_poemCollection_page.html"><button>Click here to return to the top of the page.</button></a>
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
   
   <xsl:template match="poem" mode="toc">
       <li >
           <xsl:apply-templates select="descendant::title" mode="toc"/>
       </li>
   </xsl:template>
</xsl:stylesheet>