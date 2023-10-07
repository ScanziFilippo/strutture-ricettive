<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Strutture ricettive di Roma Capitale</title>
            </head>
            <body>
                <div>
                    <h1>Strutture ricettive di Roma Capitale</h1>
                    <table border="1">
                        <tr>
                            <th>Tipologia</th>
                            <th>Classificazione</th>
                            <th>Denominazione</th>
                            <th>Indirizzo</th>
                            <th>Camere</th>
                            <th>Posti letto</th>
                            <th>Unita abitative</th>
                        </tr>
                        <xsl:for-each select="strutture/struttura">
                            <tr>
                                <td>
                                    <xsl:value-of select="tipologia"/>
                                </td>
                                <td>
                                    <xsl:value-of select="classificazione"/>
                                </td>
                                <td>
                                    <xsl:value-of select="denominazione"/>
                                </td>
                                <td>
                                    <xsl:value-of select="indirizzo"/>
                                </td>
                                <td>
                                    <xsl:value-of select="camere/@totale"/>
                                </td>
                                <td>
                                    <xsl:value-of select="camere/@posti-letto-totali"/>
                                </td>
                                <td>
                                    <xsl:value-of select="unita-abitative/@totale"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
