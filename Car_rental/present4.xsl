<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
    <html>
      <head>
        <title>Cars to Rent</title>
        <style>
          body {
            font-family: Arial, sans-serif;
          }
          h1 {
            color: #d9534f;
          }
          ul {
            list-style-type: disc;
            margin-left: 20px;
          }
          li {
            margin-bottom: 10px;
          }
        </style>
      </head>
      <body>
        <h1>Cars to Rent</h1>
        <cars_to_rent>
          <xsl:apply-templates select="cars_to_rent/car"/>
        </cars_to_rent>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="car">
    <div class="car">
      <h2>Model: <xsl:value-of select="extra_car_info/@model"/></h2>
      <ul>
        <li><strong>Basic Equipment:</strong>
          <ul>
            <xsl:for-each select="equipment/basic_equipment/equip">
              <li><xsl:value-of select="."/></li>
            </xsl:for-each>
          </ul>
        </li>
      </ul>
    </div>
  </xsl:template>

</xsl:stylesheet>