<?xml version="1.0"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
  <xsl:output method="html" encoding="utf-8"/>
<xsl:template match="/">
<xsl:apply-templates select="ProductInfo/Details" />
</xsl:template>

<xsl:template match="Details">
<xsl:variable name="imageurl" select="ImageUrlMedium" />
<xsl:value-of select="$imageurl" />
</xsl:template>

</xsl:stylesheet>

