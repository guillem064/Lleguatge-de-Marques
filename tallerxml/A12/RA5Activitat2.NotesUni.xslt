<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/notes">
        <html>
            <head>
                <style>
                    body {
                        font-family: Arial;
                        background-color: #ddd;
                    }
                    table {
                        border-collapse: collapse;
                        margin-bottom: 30px;
                        width: 300px;
                        background-color: #eee;
                    }
                    th {
                        text-align: left;
                        padding: 8px;
                        font-size: 20px;
                        background-color: #ccc;
                        border: 1px solid black;
                    }
                    td {
                        border: 1px solid black;
                        padding: 6px;
                    }
                    .suspens {
                        background-color: red;
                        color: black;
                        font-weight: bold;
                    }
                </style>
            </head>
            <body>

                <xsl:for-each select="assignatura">
                    <table>
                        <tr>
                            <th colspan="2">
                                <xsl:value-of select="nom_assignatura"/>
                            </th>
                        </tr>

                        <xsl:for-each select="alumnes/alumne">
                            <tr>
                                <!-- Nom -->
                                <td>
                                    <xsl:choose>
                                        <xsl:when test="nota &lt; 5">
                                            <span class="suspens">
                                                <xsl:value-of select="nom"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="nom"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </td>

                                <!-- Nota -->
                                <td>
                                    <xsl:choose>
                                        <xsl:when test="nota &lt; 5">
                                            <span class="suspens">
                                                <xsl:value-of select="nota"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="nota"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </td>
                            </tr>
                        </xsl:for-each>

                    </table>
                </xsl:for-each>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>