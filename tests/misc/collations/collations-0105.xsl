<!DOCTYPE xsl:stylesheet SYSTEM "collation.dtd">

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="xs">

<xsl:strip-space elements="*"/>

<xsl:param name="collation" as="xs:string" select="'&coll;'"/>


<!-- keys using a case-blind collation -->

<xsl:key name="k" match="word" use="." collation="&coll;"/>

<xsl:template match="/">
<out>
  <xsl:value-of select="key('k', 'thou')"/>
</out>
</xsl:template>

</xsl:stylesheet>

