<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Αυτοκίνητα με Εκπομπές CO2 Πάνω από 110 gr/km</h2>
                <table border="1">
                    <tr>
                        <th>Μάρκα</th>
                        <th>Μοντέλο</th>
                        <th>Εκπομπές CO2</th>
                    </tr>
                    <xsl:for-each select="//car[main_characteristics/CO2_emissions &gt; 110]">
                        <tr>
                            <td><xsl:value-of select="manufacturer_brand"/></td>
                            <td><xsl:value-of select="extra_car_info/@model"/></td>
                            <td><xsl:value-of select="main_characteristics/CO2_emissions"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
