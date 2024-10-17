<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Ταξινόμηση Αυτοκινήτων κατά Μηνιαίο Μίσθωμα χωρίς ΦΠΑ</h2>
                <table border="1">
                    <tr>
                        <th>Μάρκα</th>
                        <th>Μοντέλο</th>
                        <th>Μηνιαίο Μίσθωμα (χωρίς ΦΠΑ)</th>
                    </tr>
                    <xsl:for-each select="//car">
                        <xsl:sort select="economic_info_leasing/monthly_leasing[@without_tax='true']" data-type="number" order="descending"/>
                        <tr>
                            <td><xsl:value-of select="manufacturer_brand"/></td>
                            <td><xsl:value-of select="extra_car_info/@model"/></td>
                            <td><xsl:value-of select="economic_info_leasing/monthly_leasing[@without_tax='true']"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
