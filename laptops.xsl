<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" >
    <xsl:template match="/">
    <html>
        <head>
            <link href="xsl_style.css" rel="stylesheet" type="text/css"/>
            <title>laptops</title>
        </head>
        <body>
            <h1> Laptops </h1>
            <xsl:for-each select="/laptops/laptop">

                <xsl:choose>
                    <xsl:when test="@category='pro' ">
                        <div style="background-color: rgb(102, 19, 39)">
                            <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="photo" />
                                </xsl:attribute>
                            </img>
                            <h2><xsl:value-of select="name"/></h2>
                            <h3>Specification:</h3>
                            <p>Color: <xsl:value-of select="color"/></p>
                            <p>Procesor: <xsl:value-of select="procesor"/></p>
                            <h3>Price:</h3>
                            <p><xsl:value-of select="price[@type='pln']"/> pln</p>
                            <p><xsl:value-of select="price[@type='usd']"/> usd</p>
                            <p><xsl:value-of select="price[@type='euro']"/> euro</p>
                        </div>
                    </xsl:when>
                    <xsl:when test="@category='mid' ">
                        <div style="background-color: rgb(138, 74, 18)">
                            <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="photo" />
                                </xsl:attribute>
                            </img>
                            <h2><xsl:value-of select="name"/></h2>
                            <h3>Specification:</h3>
                            <p>Color: <xsl:value-of select="color"/></p>
                            <p>Procesor: <xsl:value-of select="procesor"/></p>
                            <h3>Price:</h3>
                            <p><xsl:value-of select="price[@type='pln']"/> pln</p>
                            <p><xsl:value-of select="price[@type='usd']"/> usd</p>
                            <p><xsl:value-of select="price[@type='euro']"/> euro</p>
                        </div>
                    </xsl:when>
                    <xsl:otherwise>
                        <div style="background-color: rgb(13, 84, 50)">
                            <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="photo" />
                                </xsl:attribute>
                            </img>
                            <h2><xsl:value-of select="name"/></h2>
                            <h3>Specification:</h3>
                            <p>Color: <xsl:value-of select="color"/></p>
                            <p>Procesor: <xsl:value-of select="procesor"/></p>
                            <h3>Price:</h3>
                            <p><xsl:value-of select="price[@type='pln']"/> pln</p>
                            <p><xsl:value-of select="price[@type='usd']"/> usd</p>
                            <p><xsl:value-of select="price[@type='euro']"/> euro</p>
                        </div>
                    </xsl:otherwise>
                </xsl:choose>
                <!-- <div>
                    <xsl:value-of select="name"/>

                    <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="photo" />
                        </xsl:attribute>
                    </img>
                </div> -->


            </xsl:for-each>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>