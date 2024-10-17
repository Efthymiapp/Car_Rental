<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Πληροφορίες Αυτοκινήτων Προς Ενοικίαση</h2>
                <table border="1">
                    <tr>
                        <th>Μάρκα</th>
                        <th>Μοντέλο</th>
                        <th>Χρώμα</th>
                        <th>Μικρή Περιγραφή</th>
                    </tr>
                    <xsl:apply-templates select="//car"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="car">
        <tr>
            <td><xsl:value-of select="manufacturer_brand"/></td>
            <td><xsl:value-of select="extra_car_info/@model"/></td>
            <td><xsl:value-of select="extra_car_info/@color"/></td>
            <td><xsl:value-of select="extra_car_info/@mini_model_description"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
