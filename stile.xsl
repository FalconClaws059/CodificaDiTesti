<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:t="http://www.tei-c.org/ns/1.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema">


<xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="t:TEI/t:teiHeader/t:fileDesc/t:titleStmt/t:title"/></title>
                <link href="style.css" rel="stylesheet" type="text/css"/>
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
                <script src="script.js"></script> 
            </head>

        <body>

            <header>
            <div class="navbar">
                <div class="left-links">
                    <a href="#">Home</a>
                    <a href="#page147">Pagina 147</a>
                    <a href="#page148">Pagina 148</a>
                    <a href="#page149">Pagina 149</a>
                    <a href="#about">About</a>
                </div>
            </div>
            </header>

            <div class="container" name="intro">
                <div class="info-box">
                    <p>
                        <h1>
                            <strong>
                                <xsl:value-of select="//t:titleStmt/t:title"/>
                            </strong>
                        </h1>
                    </p>
                    <p>
                        <strong>Edizione: </strong>
                        <xsl:value-of select="//t:editionStmt/t:edition/text()"/>
                    </p>
                    <p>
                        <strong>Data Edizione: </strong>
                        <xsl:value-of select="//t:editionStmt//t:date"/>
                    </p>
                    <p>
                        <strong>Conversione a cura di: </strong>
                        <xsl:value-of select="//t:respStmt[t:persName[@xml:id='VB']]/t:persName"/>
                    </p>
                    <p>
                        <strong>Progetto coordinato da: </strong>
                        <xsl:value-of select="//t:editionStmt//t:respStmt[t:persName[@xml:id='AMDG']]//t:persName"/>,
                        <xsl:value-of select="//t:publicationStmt//t:publisher"/>
                    </p>
                </div>
            </div>

            <div class="container">
                <div class="info-box">
                    <h2>Informazioni sulla fonte</h2>
                    <p>
                        <strong>Titolo: </strong>
                        <xsl:value-of select="//t:sourceDesc//t:msDesc//t:msContents//t:msItem//t:title"/>
                    </p>
                    <p>
                        <strong>Autore: </strong>
                        <a href="{//t:sourceDesc//t:msDesc//t:msContents//t:msItem//t:author/@ref}">
                            <xsl:value-of select="//t:sourceDesc//t:msDesc//t:msContents//t:msItem//t:author"/>
                        </a>
                    </p>
                    <p>
                        <strong>Data: </strong>
                        <xsl:value-of select="//t:sourceDesc//t:msDesc//t:msContents//t:msItem//t:docImprint//t:date"/>
                    </p>
                    <p>
                        <strong>Lingua: </strong>
                        <xsl:value-of select="//t:textLang"/>
                    </p>

                    <p>
                        <strong>Condizioni: </strong>
                        <xsl:value-of select="//t:supportDesc//t:condition"/>
                    </p>

                     <p>
                        <strong>Caratteristiche: </strong>
                        <xsl:value-of select="//t:typeDesc"/>
                    </p>

                    <p>
                        <strong>Estensione: </strong>
                        <xsl:value-of select="//t:supportDesc//t:extent"/>
                    </p>
                    
                    <p>
                        <strong>Struttura delle pagine: </strong>
                        <xsl:value-of select="//t:layoutDesc//t:layout"/>
                    </p>

                    <p>
                        <strong>Conservato da: </strong> 
                        <a href="{//t:sourceDesc//t:msDesc//t:msIdentifier//t:institution/@ref}">
                            <xsl:value-of select="//t:sourceDesc//t:msDesc//t:msIdentifier//t:institution"/>
                        </a>
                    </p>
                    
                </div>

                

            </div>
        <div class="container">
            <div class="info-box glossario">
                <h2>Glossario</h2>
                <p> Questa sezione contiene approfondimenti riguardanti persone, luoghi ed associazioni citate all'interno delle pagine codificate.</p>
                <br />
                <h4>Personaggi:</h4>
                    <xsl:apply-templates select="//t:listPerson"/>
                <h4>Luoghi:</h4>
                <xsl:apply-templates select="//t:listPlace/t:place"/>
                <h4>Associazioni:</h4>
                <xsl:apply-templates select="//t:listOrg/t:org"/>
            </div>
        </div>

        <!--PAGINA 147-->

        <section class="page-container">
            <div class="pageNum">Pagina 151</div>
            <div class="pages">
                <xsl:element name="img">
                    <xsl:attribute name="src">
                        <xsl:value-of select="//t:graphic[@xml:id='p151']/@url"/>
                    </xsl:attribute>
                </xsl:element>
            </div>
    
            <div class="text-container">
                <div class="encoded-text">
                    <xsl:apply-templates select="//t:ab[@xml:id='p151']"/>
                </div>
            </div>
        </section>

        <!-- PAGINA 148 -->

        <section class="page-container">
            <div class="pageNum">Pagina 152</div>
            <div class="text-container">
                <div class="encoded-text">
                    <xsl:apply-templates select="//t:ab[@xml:id='p152']"/>
                </div>
            </div>

            <div class="pages">
                <xsl:element name="img">
                    <xsl:attribute name="src">
                        <xsl:value-of select="//t:graphic[@xml:id='p152']/@url"/>
                    </xsl:attribute>
                </xsl:element>
            </div>
    
        </section>
        <!-- PAGINA 149-->

        <section class="page-container">
            <div class="pageNum">Pagina 153</div>
            <div class="pages">
                <xsl:element name="img">
                    <xsl:attribute name="src">
                        <xsl:value-of select="//t:graphic[@xml:id='p153']/@url"/>
                    </xsl:attribute>
                </xsl:element>
            </div>
    
            <div class="text-container">
                <div class="encoded-text">
                    <xsl:apply-templates select="//t:ab[@xml:id='p153']"/>
                </div>
            </div>
        </section>



            <footer>
                <p>
                email: v.bertolone@studenti.unipi.it
                </p>
            </footer>
        </body>
    </html>
</xsl:template>

<!-- templates -->

<xsl:template match="//t:ab//t:lb">
    <xsl:for-each select="current()">
      <xsl:element name="br">
        </xsl:element>
    </xsl:for-each>
   </xsl:template>

 <!-- Template cancellature -->

   <xsl:template match="//t:del">
      <span class="del" style = "display: none; color: #af4bfc; text-decoration: underline">
         <xsl:value-of select="current()"/>
      </span>
   </xsl:template>

<!-- Template gap -->

    <xsl:template match="//t:gap[@reason='illegible']">
      <span class="gap">
          <i class="fas fa-exclamation-circle"></i>
      </span>
   </xsl:template>

<!-- Template sostituzioni per correzioni e abbreviazioni -->
    <xsl:template match="//t:choice">
        <span class="choice">
        <xsl:if test="t:sic">
            <span class="sic">
                <xsl:value-of select="t:sic"/>
            </span>
        </xsl:if>
        <xsl:if test="t:corr">
            <span class="corr">
                <xsl:value-of select="t:corr"/>
            </span>
        </xsl:if>
        <xsl:if test="t:abbr">
            <span class="abbr">
                <xsl:value-of select="t:expan"/>
            </span>
        </xsl:if>
        <xsl:if test="t:expan">
            <span class="expan">
                <xsl:value-of select="t:abbr"/>
            </span>
        </xsl:if>
        </span>
    </xsl:template>


       <!--template list-->
    <xsl:template match="t:list">
        <div>
        <ol>
            <xsl:apply-templates select="t:item"/>
        </ol>
        </div>
    </xsl:template>

    <xsl:template match="t:item">
        <li>
        <xsl:value-of select="t:gloss"/>
        <p><a href="{t:gloss/@source}">Fonte</a></p>
        </li>
    </xsl:template>

  <!--template persone-->
    <xsl:template match="t:person">
        <p>
            <a href="{t:persName/t:ref/@target}" target="_blank">
                <xsl:value-of select="concat(t:persName/t:forename, ' ', t:persName/t:surname)"/>
            </a>  - <xsl:value-of select="t:persName/@role"/>
        </p>
        
    </xsl:template>

   <!--template luoghi-->
    <xsl:template match="t:place">
        <div>
            <strong><xsl:value-of select="t:placeName"/></strong> - <xsl:value-of select="t:settlement"/>, <xsl:value-of select="t:country"/>
        </div>
    </xsl:template>

   <!-- template associazioni -->
    <xsl:template match="t:org">
      <p>
         <strong><xsl:value-of select="t:orgName"/></strong>
         <br/>
         <xsl:value-of select="t:desc"/>
      </p>
    </xsl:template>

 <!--Template aggiunte-->
    <xsl:template match="t:add">
        <xsl:choose>
            <!--Aggiunte sopra-->
            <xsl:when test="@place ='above'" >
                <xsl:copy>
                    <span class="add-a" style="background: lightcoral; display:none">
                        <xsl:apply-templates select="node()" />
                        <!-- Applica lo stile di choice all'elemento choice -->
                        <xsl:apply-templates select="choice" />
                    </span>
                </xsl:copy>
            </xsl:when>
         
            <!--Aggiunte sotto-->
            <xsl:when test="@place ='below'">
                <span class="add-b" style="background: lightcoral; display:none">
                    <xsl:apply-templates select="node()" />
                </span>
            </xsl:when> 
            <!--Aggiunte in linea-->
            <xsl:when test="@place ='inline'">
                <span class="add-i" style="background: lightcoral; display:none">
                    <xsl:apply-templates select="node()" />
                </span>
            </xsl:when>
            <!--Aggiunta -->
            <xsl:when test="@place ='margin right inspace'">
                <span class="add-mri" style="background: lightcoral; display:none">
                    <xsl:apply-templates select="node()" />
                </span>
            </xsl:when>
        </xsl:choose>  
    </xsl:template>

</xsl:stylesheet>

