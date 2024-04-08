<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        
        <html lang="es">
            
            <head>
                <title>Title</title>
                <!-- Required meta tags -->
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                
                <!-- Bootstrap CSS v5.2.1 -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
                      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
                
                <!-- Custom CSS -->
                <link rel="stylesheet" href="css/style.css" />
                
                <!-- Font Awesome -->
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
            </head>
            
            <body>
                <header>
                    <nav class="navbar navbar-expand-sm navbar-light bg-light">
                        <div class="container">
                            <div>
                                <a class="navbar-brand" href="#">
                                    <img src="img/logo.png" alt="logo kiabi" style="height: 50px;" />
                                </a>
                            </div>
                            <div>
                                <ul class="navbar-nav mt-2 mt-lg-0">
                                    <xsl:for-each select="/kiabi/categoria">
                                        <li class="nav-item">
                                            <a class="nav-link text-black" href="#{@nombre}"><xsl:value-of select="@nombre"/></a>
                                        </li>
                                    </xsl:for-each>
                                </ul>
                            </div>
                            <div>
                                <ul class="navbar-nav mt-2 mt-lg-0">
                                    <li class="nav-item">
                                        <a href="#" class="nav-link d-flex flex-column text-center text-black">
                                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                                            Tiendas
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#" class="nav-link d-flex flex-column text-center text-black">
                                            <i class="fa fa-user" aria-hidden="true"></i>
                                            Cuenta
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#" class="nav-link d-flex flex-column text-center text-black">
                                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                            Cesta
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                    
                </header>
                <main class="container">
                    <section class="mt-3">
                        <ul class="list-unstyled d-flex justify-content-center gap-5">
                            <xsl:for-each select="kiabi/categoria">
                                <li>
                                    <a href="#{@nombre}" class="text-decoration-none d-flex flex-column gap-2 text-center justify-content-center text-black" style="height: auto; width: 120px;">
                                        <img src="{foto}" alt="{@nombre}" style="height: auto; width: 120px; border-radius: 50%;" />
                                        <xsl:value-of select="@nombre"/>
                                    </a>
                                </li>
                            </xsl:for-each>
                        </ul>
                    </section>
                    <xsl:for-each select="kiabi/categoria">
                        <section class="mt-4" id="{@nombre}">
                            <h3><xsl:value-of select="@nombre"/></h3>
                            <div class="row mt-3">
                                <xsl:for-each select="prenda">
                                    <xsl:sort select="precio" data-type="number" order="ascending" />
                                    <div class="col-4 mb-4">
                                        <div class="card">
                                            <img src="{foto}" class="card-img-top" alt="..." />
                                            <div class="card-body">
                                                <h6 class="card-subtitle mb-2 text-muted "><xsl:value-of select="producto"/></h6>
                                                <h5 class="card-title m-0 p-0"><xsl:value-of select="precio"/>&euro;</h5>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:for-each>
                            </div>
                        </section>
                    </xsl:for-each>
                </main>
                
                <!-- Bootstrap JavaScript Libraries -->
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
                        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
                        crossorigin="anonymous"></script>
                
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
                        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
                        crossorigin="anonymous"></script>
            </body>
            
        </html>
        
    </xsl:template>
</xsl:stylesheet>