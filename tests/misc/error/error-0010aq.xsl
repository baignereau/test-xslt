<?xml version="1.0" encoding="UTF-8"?>
<!--It is a static error if an
                     XSLT-defined element is used in a context where it is not permitted, if a
                        required attribute is omitted, or if the content of the
                     element does not correspond to the content that is allowed for the element.-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<!-- Error: xsl:strip-space with misspelled attribute -->
<?spec xslt#errors?><?error XTSE0010?>

   <xsl:strip-space elem="*"/>

  <xsl:template match="doc">
      <out>
         <xsl:message>Error not detected!</xsl:message>
      </out>
  </xsl:template>

   <xsl:variable name="z" select="16"/>

</xsl:stylesheet>
