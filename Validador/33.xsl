<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Lista de Ejemplares del Vivero</h2>
                <table border="1">
                    <tr bgcolor="#800080"> <!-- Color púrpura -->
                        <th>Cientifico</th>
                        <th>Vulgar</th>
                        <th>Origen</th>
                        <th>Riego</th>
                        <th>Poda</th>
                        <th>Luz</th>
                        <th>Abono</th>
                        <th>Color</th>
                        <th>Raiz</th>
                        <th>Tipo de Hoja</th>
                    </tr>
                    <xsl:for-each select="vivero/ejemplar">
                        <tr>
                            <td><xsl:value-of select="cientifico"/></td>
                            <td><xsl:value-of select="vulgar"/></td>
                            <td><xsl:value-of select="origen"/></td>
                            <td><xsl:value-of select="cuidados/riego"/></td>
                            <td><xsl:value-of select="cuidados/poda"/></td>
                            <td><xsl:value-of select="cuidados/luz"/></td>
                            <td><xsl:value-of select="cuidados/abono"/></td>
                            <td><xsl:value-of select="morfologia/color"/></td>
                            <td><xsl:value-of select="morfologia/raiz"/></td>
                            <td><xsl:value-of select="morfologia/tipo_hoja"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
