<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Ταξινόμηση Αυτοκινήτων Αλφαβητικά</h2>
                <table border="1">
                    <tr>
                        <th>Μάρκα</th>
                        <th>Μοντέλο</th>
                    </tr>
                    <xsl:apply-templates select="//car">
                        <xsl:sort select="manufacturer_brand"/>
                    </xsl:apply-templates>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="car">
        <tr>
            <td><xsl:value-of select="manufacturer_brand"/></td>
            <td><xsl:value-of select="extra_car_info/@model"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
