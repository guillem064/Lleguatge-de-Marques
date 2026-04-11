<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
<xsl:output method="text" encoding="UTF-8"/>
    <xsl:template match="/notes">
        <xsl:for-each select="assignatura">

            <xsl:value-of select="nom_assignatura"/>
            <xsl:text>&#10;</xsl:text>

            <xsl:text>..............................................................</xsl:text>
            <xsl:text>&#10;</xsl:text>

            <xsl:for-each select="alumnes/alumne">
                <xsl:value-of select="nom"/>
                <xsl:text> -- </xsl:text>
                <xsl:value-of select="nota"/>
                <xsl:text>&#10;</xsl:text>
            </xsl:for-each>

            <xsl:text>&#10;</xsl:text>

        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>