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
                        <xsl:for-each select="strutture">
                            <tr>
                                <td>
                                    <xsl:value-of select="strutture/struttura/tipologia"/>
                                </td>

                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
