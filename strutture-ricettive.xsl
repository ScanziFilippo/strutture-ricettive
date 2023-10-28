<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Strutture ricettive di Roma Capitale</title>
            </head>
            <body style="font-family:'Arial'">
                <div>
                    <h1>4 Strutture ricettive di Roma Capitale</h1>
                    <p>Un esercitazione in XML, DTD, XSD, XSLT</p>
                    <hr class="dashed"/>
                    <h2>Tutte</h2>
                    <table border="0" style="border-spacing: 5px">
                        <tr style="background-color:Tomato">
                            <th>Classe</th>
                            <th>Tipologia</th>
                            <th>Classificazione</th>
                            <th>Denominazione</th>
                            <th>Indirizzo</th>
                            <th>Camere</th>
                            <th>Posti letto camere</th>
                            <th>Unita abitative</th>
                            <th>Posti letto unita abitative</th>
                        </tr>
                        <xsl:for-each select="strutture/struttura">
                            <tr>
                                <td>
                                    <xsl:value-of select="camere/singole/classe/@nome"/>
                                </td>
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
                                <td>
                                    <xsl:value-of select="unita-abitative/@posti-letto-totali"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    <br></br>
                    <hr class="rounded"/>
                    <h2>Almeno 1 camera</h2>
                    <table border="0" style="border-spacing: 5px">
                        <tr style="background-color:Tomato">
                            <th>Classe</th>
                            <th>Tipologia</th>
                            <th>Classificazione</th>
                            <th>Denominazione</th>
                            <th>Indirizzo</th>
                            <th>Camere</th>
                            <th>Posti letto camere</th>
                            <th>Unita abitative</th>
                            <th>Posti letto unita abitative</th>
                        </tr>
                        <xsl:for-each select="strutture/struttura[camere/@totale>0]">
                            <tr>
                                <td>
                                    <xsl:value-of select="camere/singole/classe/@nome"/>
                                </td>
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
                                <td>
                                    <xsl:value-of select="unita-abitative/@posti-letto-totali"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    <br></br>
                    <hr class="rounded"/>
                    <h2>Almeno 1 unita abitativa</h2>
                    <table border="0" style="border-spacing: 5px">
                        <tr style="background-color:Tomato">
                            <th>Classe</th>
                            <th>Tipologia</th>
                            <th>Classificazione</th>
                            <th>Denominazione</th>
                            <th>Indirizzo</th>
                            <th>Camere</th>
                            <th>Posti letto camere</th>
                            <th>Unita abitative</th>
                            <th>Posti letto unita abitative</th>
                        </tr>
                        <xsl:for-each select="strutture/struttura[unita-abitative/@totale>0]">
                            <tr>
                                <td>
                                    <xsl:value-of select="camere/singole/classe/@nome"/>
                                </td>
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
                                <td>
                                    <xsl:value-of select="unita-abitative/@posti-letto-totali"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    <br></br>
                    <hr class="rounded"/>
                    <h2>Solo alberghi</h2>
                    <table border="0" style="border-spacing: 5px">
                        <tr style="background-color:Tomato">
                            <th>Classe</th>
                            <th>Tipologia</th>
                            <th>Classificazione</th>
                            <th>Denominazione</th>
                            <th>Indirizzo</th>
                            <th>Camere</th>
                            <th>Posti letto camere</th>
                            <th>Unita abitative</th>
                            <th>Posti letto unita abitative</th>
                        </tr>
                        <xsl:for-each select='strutture/struttura[tipologia="Albergo"]'>
                            <tr>
                                <td>
                                    <xsl:value-of select="camere/singole/classe/@nome"/>
                                </td>
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
                                <td>
                                    <xsl:value-of select="unita-abitative/@posti-letto-totali"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
