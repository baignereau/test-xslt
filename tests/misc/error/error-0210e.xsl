<?xml version="1.0" encoding="UTF-8"?>
<!--It is a static error if a
                        stylesheet module directly or indirectly imports itself.-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<?error XTSE0210?>

  <xsl:import href="error-0210f.xsl"/>

  <xsl:template name="main">
      <out>
         <xsl:apply-templates/>
      </out>
  </xsl:template>




</xsl:stylesheet>
