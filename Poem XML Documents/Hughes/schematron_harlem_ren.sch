<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns="http://purl.oclc.org/dsdl/schematron">
    
    
    <pattern>
        <rule context="*">
            <report test="starts-with(., ' ')">Element should not begin with a whitespace.</report>
        </rule>
    </pattern>
    
</schema>