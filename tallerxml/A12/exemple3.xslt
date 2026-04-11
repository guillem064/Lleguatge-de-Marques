<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
    <xsl:output indent="yes"/>
    <xsl:template match="/">
        <comanda>
            <llibreria>
                <xsl:attribute name="data">
                    <xsl:value-of select="/peticio/data"/>
                </xsl:attribute>
                <xsl:value-of select="/peticio/@llibreria"/>
            </llibreria>
            <xsl:apply-templates select="//titol"/>
        </comanda>
    </xsl:template>
    <xsl:template match="titol">
        <llibre>
            <xsl:attribute name="quantitat">
                <xsl:value-of select="../quantitat"/>
            </xsl:attribute>
            <nom><xsl:value-of select="."/></nom>
            <autor><xsl:value-of select="../../../nom"/></autor>
        </llibre>
    </xsl:template>
</xsl:stylesheet>