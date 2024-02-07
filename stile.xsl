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
                <script src="https://kit.fontawesome.com/ea04ba946f.js" crossorigin="anonymous"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script src="anime.min.js"></script>
                <script src="script.js"></script> 
            </head>

        <body>

            <div class="menu-sticky">
                <button type="button" class="menu-button disabled" title="Visualizza estensioni" id="A"> <i class="fa-solid fa-up-right-and-down-left-from-center"></i> </button>
                <button type="button" class="menu-button disabled" title="Visualizza parti cancellate" id="B"> <i class="fa-solid fa-eraser"></i></button>
                <button type="button" class="menu-button disabled" title="Visualizza correzioni" id="C"> <i class="fa-regular fa-pen-to-square"></i> </button>
            </div>

            <header>
            <div class="navbar">
                <div class="left-links">
                    <a href="#">Home</a>
                    <a href="#p151">Pagina 151</a>
                    <a href="#p152">Pagina 152</a>
                    <a href="#p153">Pagina 153</a>
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
      <span class="del hidden">
         <xsl:value-of select="node()"/>
      </span>
   </xsl:template>


 <!-- Template "sic" -->
    <xsl:template match="t:sic">
        <span class="sic hidden">
            <xsl:apply-templates select="node()"/>
        </span>
    </xsl:template>

    
<!-- Template correzioni -->

    <xsl:template match="t:corr">
            <span class="corr">
            <xsl:apply-templates select="node()"/>
            </span>
    </xsl:template>
    
 <!-- Template abbreviazioni -->
    <xsl:template match="t:abbr">
            <span class="abbr">
            <xsl:apply-templates select="node()"/>
            </span>
    </xsl:template>

 <!-- Template forme estese -->
    <xsl:template match="t:expan">
            <span class="expan hidden">
            <xsl:apply-templates select="node()"/>
            </span>
    </xsl:template>


<!-- Template gap -->

    <xsl:template match="//t:gap[@reason='illegible']">
      <span class="gap">
          <i class="fa-solid fa-circle-exclamation"></i>
      </span>
   </xsl:template>

<!-- Template unclear -->

    <xsl:template match="//t:unclear">
      <span class="unclear">
          <xsl:apply-templates select="node()"/>
      </span>
   </xsl:template>

<!-- Template scelte -->
    <xsl:template match="//t:choice">
        <span class="choice">
            <xsl:apply-templates select="node()"/>
        </span>
    </xsl:template>

<!-- Template per persone apparse nel testo -->
    <xsl:template match="t:persName">
        <a class="collegamento">
            <xsl:attribute name="href">
                <xsl:value-of select="concat('#', @xml:id)"/>
            </xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </a>
    </xsl:template>

<!-- Template per persone apparse nel testo -->
    <xsl:template match="t:placeName">
        <a class="collegamento">
            <xsl:attribute name="href">
                <xsl:value-of select="concat('#', @xml:id)"/>
            </xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </a>
    </xsl:template>


<!-- Template per persone apparse nel testo -->
    <xsl:template match="t:orgName">
        <a class="collegamento">
            <xsl:attribute name="href">
                <xsl:value-of select="concat('#', @xml:id)"/>
            </xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </a>
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
            <a href="{t:persName/t:ref/@target}"  id="{@xml:id}"  target="_blank">
                <xsl:value-of select="concat(t:persName/t:forename, ' ', t:persName/t:surname)"/>
            </a>  - <xsl:value-of select="t:persName/@role"/>
        </p>
        
    </xsl:template>

   <!--template luoghi-->
    <xsl:template match="t:place">
        <div>
            <a href="{@target}" id="{@xml:id}" target="_blank"> <xsl:value-of select="t:placeName"/></a> - <xsl:value-of select="t:settlement"/>, <xsl:value-of select="t:country"/>
        </div>
    </xsl:template>

   <!-- template associazioni -->
    <xsl:template match="t:org">
      <p>
         <a href="{@target}" id="{@xml:id}" target="_blank"><xsl:value-of select="t:orgName"/></a>
         <br/>
         <xsl:value-of select="t:desc"/>
      </p>
    </xsl:template>

 <!--Template aggiunte-->
    <xsl:template match="t:add[@rend='above']">
        <span class="add above">
            <xsl:apply-templates select="node()" />
        </span>
    </xsl:template>
    
    <xsl:template match="t:add[@place='bottom']">
        <div class="note">
            <xsl:attribute name="id">
                <xsl:value-of select="concat('#', @xml:id)"/>
            </xsl:attribute>
            <xsl:apply-templates select="node()" />
        </div>
    </xsl:template>

    <xsl:template match="t:ref[@target='#notaAggiunta']">
        <i id="shownote" class="fa-solid fa-triangle-exclamation"></i>
    </xsl:template>

</xsl:stylesheet>

