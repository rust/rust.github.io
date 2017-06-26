<?xml version="1.0"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
  <xsl:output method="html" encoding="utf-8"/>
<xsl:template match="/">
<xsl:apply-templates select="ProductInfo/Details" />
</xsl:template>

<xsl:template match="Details">
<xsl:variable name="listprice" select="ListPrice" />
<xsl:variable name="ourprice" select="OurPrice" />
<xsl:variable name="availavility" select="Availability" />
<html lang="ja">
<head>
<link rel="stylesheet" href="/mt/styles-site.css" type="text/css" />
</head>
<body>
<font size="-1">
価格　<b><xsl:value-of select="$ourprice"/></b>　［　定価　<xsl:value-of select="$listprice"/>　］<br />
<xsl:value-of select="$availavility"/><br />
</font>
</body>
</html>
</xsl:template>

</xsl:stylesheet>

