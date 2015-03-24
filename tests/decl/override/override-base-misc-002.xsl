<xsl:package 
  name="http://www.w3.org/xslt30tests/override-base-misc-002"
  package-version="1.0.0"
  version="3.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:p="http://www.w3.org/xslt30tests/override-base-misc-002"
  exclude-result-prefixes="xs p">
  
  <xsl:key name="k" match="*" use="."/>
  
  <xsl:accumulator name="ac" initial-value="0" streamable="yes">
    <xsl:accumulator-rule match="*" new-value="$value+1"/>
  </xsl:accumulator>
  
  
  <xsl:template name="use-base" visibility="public">
    <xsl:stream href="../accumulator/books.xml" use-accumulators="ac">
      <a><count nodes="{count(//*)}"/><acc value="{accumulator-after('ac')}"/></a>
    </xsl:stream>  
  </xsl:template>

  
  
</xsl:package>   