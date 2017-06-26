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
<xsl:variable name="productname" select="ProductName" />
<xsl:variable name="releasedate" select="ReleaseDate" />
<xsl:variable name="asin" select="Asin" />
<xsl:variable name="imageurl" select="ImageUrlMedium" />

<xsl:element name="html">
 <xsl:element name="head">
  <xsl:element name="link">
   <xsl:attribute name="rel"><xsl:text>stylesheet</xsl:text></xsl:attribute>
   <xsl:attribute name="href"><xsl:text>http://stnard.jp/mt/styles-site.css</xsl:text></xsl:attribute>
   <xsl:attribute name="type"><xsl:text>text/css</xsl:text></xsl:attribute>
  </xsl:element>
 </xsl:element>
 <xsl:element name="body">

  <xsl:element name="table">
   <xsl:attribute name="border"><xsl:text>0</xsl:text></xsl:attribute>
   <xsl:attribute name="cellpadding"><xsl:text>5</xsl:text></xsl:attribute>
   <xsl:attribute name="width"><xsl:text>100%</xsl:text></xsl:attribute>

    <xsl:element name="tr">

     <xsl:element name="td">
      <xsl:attribute name="valign"><xsl:text>top</xsl:text></xsl:attribute>

       <xsl:element name="a">
        <xsl:attribute name="href"><xsl:text>http://www.amazon.co.jp/exec/obidos/ASIN/</xsl:text><xsl:value-of select="$asin" /><xsl:text>/stnardsdiary-22/ref=nosim</xsl:text></xsl:attribute>
        <xsl:attribute name="target"><xsl:text>_blank</xsl:text></xsl:attribute>
        <xsl:element name="img">
         <xsl:attribute name="src"><xsl:value-of select="$imageurl" /></xsl:attribute>
         <xsl:attribute name="border"><xsl:text>0</xsl:text></xsl:attribute>
        </xsl:element>
       </xsl:element>

     </xsl:element>

     <xsl:element name="td">
      <xsl:attribute name="valign"><xsl:text>top</xsl:text></xsl:attribute>

       <xsl:element name="a">
        <xsl:attribute name="href"><xsl:text>http://www.amazon.co.jp/exec/obidos/ASIN/</xsl:text><xsl:value-of select="$asin" /><xsl:text>/stnardsdiary-22/ref=nosim</xsl:text></xsl:attribute>
        <xsl:attribute name="target"><xsl:text>_blank</xsl:text></xsl:attribute>
         <xsl:value-of select="$productname" /><br />

       </xsl:element>
       <xsl:element name="br"/>

       <xsl:apply-templates select="Authors" />

       <xsl:element name="br"/>
       <xsl:element name="br"/>

       <xsl:element name="font">
        <xsl:attribute name="size"><xsl:text>-1</xsl:text></xsl:attribute>
        <xsl:text>発売日　</xsl:text><xsl:element name="b"><xsl:value-of select="$releasedate" /></xsl:element><xsl:element name="br"/>
        <xsl:text>売り上げランキング　</xsl:text><xsl:element name="b"></xsl:element><xsl:element name="br"/>
        <xsl:text>価格　</xsl:text><xsl:element name="b"><xsl:value-of select="$ourprice" /></xsl:element>
        <xsl:text>　［　定価　</xsl:text><xsl:value-of select="$listprice" /><xsl:text>　］</xsl:text><xsl:element name="br"/>
        <xsl:value-of select="$availavility" /><xsl:element name="br"/>
       </xsl:element>
       <xsl:element name="br"/>
       <xsl:element name="br"/>

       <xsl:element name="a">
        <xsl:attribute name="href"><xsl:text>http://www.amazon.co.jp/exec/obidos/ASIN/</xsl:text><xsl:value-of select="$asin" /><xsl:text>/stnardsdiary-22/ref=nosim</xsl:text></xsl:attribute>
        <xsl:attribute name="target"><xsl:text>_blank</xsl:text></xsl:attribute>

        <xsl:element name="font">
         <xsl:text>Amazonで詳しく見る</xsl:text>
        </xsl:element>

       </xsl:element>
       <xsl:element name="br"/>

     </xsl:element>
    </xsl:element>

  </xsl:element>

 </xsl:element>
</xsl:element>

</xsl:template>

<xsl:template match="Authors">
 <xsl:value-of select="Author" />
</xsl:template>

</xsl:stylesheet>
