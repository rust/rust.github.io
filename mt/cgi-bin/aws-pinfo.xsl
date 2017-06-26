<?xml version="1.0"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
  <xsl:output method="html" encoding="utf-8"/>
<xsl:template match="/">
<xsl:apply-templates select="ItemLookupResponse/Items" />
</xsl:template>

<xsl:template match="Items">
<xsl:variable name="price" select="FormattedPrice" />
<html lang="ja">
<head>
<link rel="stylesheet" href="/mt/styles-site.css" type="text/css" />
</head>
<body>
<div class="awsp">
価格　<b><xsl:value-of select="$price"/></b><br />
</div>
</body>
</html>
</xsl:template>

</xsl:stylesheet>

