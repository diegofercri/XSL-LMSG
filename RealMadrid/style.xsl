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
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    <xsl:template match="/">
        <html lang="es">
            
            <head>
                <title>Real Madrid</title>
                <!-- Required meta tags -->
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                
                <!-- Bootstrap CSS v5.2.1 -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
                      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
                
                <!-- Custom CSS -->
                <link rel="stylesheet" href="css/style.css" />
                <link rel="stylesheet" href="css/football.css" />
            </head>
            
            <body>
                <header>
                    <nav class="navbar navbar-expand-sm navbar-light bg-light">
                        <div class="container">
                            <a class="navbar-brand" href="#">
                                <img src="img/logo.png" alt="logo" style="height: 50px;" />
                            </a>
                            <button class="navbar-toggler d-lg-none" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
                                    aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="collapsibleNavId">
                                <ul class="navbar-nav me-auto mt-2 mt-lg-0">
                                    <li class="nav-item">
                                        <a class="nav-link active" href="#" aria-current="page">Home
                                            <span class="visually-hidden">(current)</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Link</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="dropdownId" data-bs-toggle="dropdown"
                                           aria-haspopup="true" aria-expanded="false">Dropdown</a>
                                        <div class="dropdown-menu" aria-labelledby="dropdownId">
                                            <a class="dropdown-item" href="#">Action 1</a>
                                            <a class="dropdown-item" href="#">Action 2</a>
                                        </div>
                                    </li>
                                </ul>
                                <form class="d-flex my-2 my-lg-0">
                                    <input class="form-control me-sm-2" type="text" placeholder="Search" />
                                    <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">
                                        Search
                                    </button>
                                </form>
                            </div>
                        </div>
                    </nav>
                    
                </header>
                <main>
                    <section class="container mt-4">
                        <h1 class="text-center text-dark">11 Inicial</h1>
                        <div id="footballField" class="vh-100 mt-3 d-flex position-relative">
                            <div class="bg-c1 h-100 w-12 rounded-start-3"></div>
                            <div class="bg-c2 h-100 w-12"></div>
                            <div class="bg-c1 h-100 w-12"></div>
                            <div class="bg-c2 h-100 w-12"></div>
                            <div class="bg-c1 h-100 w-12"></div>
                            <div class="bg-c2 h-100 w-12"></div>
                            <div class="bg-c1 h-100 w-12"></div>
                            <div class="bg-c2 h-100 w-12 rounded-end-3"></div>
                            <div id="lines" class="position-absolute p-3 h-100 w-100">
                                <div class="inner">
                                    <div class="middle-line"></div>
                                    <div class="middle-circle"></div>
                                    <div class="bow is-left"></div>
                                    <div class="bow is-right"></div>
                                    <div class="penalty-area is-right"></div>
                                    <div class="penalty-area is-left"></div>
                                    <div class="goal is-right">
                                        <div class="penalty"></div>
                                    </div>
                                    <div class="goal is-left">
                                        <div class="penalty"></div>
                                    </div>
                                </div>
                            </div>
                            <div id="players" class="position-absolute p-3 h-100 w-100 d-flex">
                                <div id="portero" class="w-25 h-100 d-flex align-items-center justify-content-start px-3">
                                    <div class="playerCard d-flex flex-column align-items-center justify-content-center">
                                        <div class="player d-flex align-items-center justify-content-center">
                                            <a class="m-0 p-0 display-6 text-decoration-none fw-bold"><xsl:value-of select="realmadrid/eleven/gk/person/number"/></a>
                                        </div>
                                        <div class="playerName">
                                            <a><xsl:value-of select="realmadrid/eleven/gk/person/name"/></a>
                                        </div>
                                    </div>
                                </div>
                                <div id="defensas" class="w-25 h-100 d-flex flex-column align-items-start justify-content-around">
                                    <xsl:for-each select="realmadrid/eleven/df/person">
                                        <div class="playerCard d-flex flex-column align-items-center justify-content-center">
                                            <div class="player d-flex align-items-center justify-content-center">
                                                <a class="m-0 p-0 display-6 text-decoration-none fw-bold"><xsl:value-of select="number"/></a>
                                            </div>
                                            <div class="playerName">
                                                <a><xsl:value-of select="name"/></a>
                                            </div>
                                        </div>
                                    </xsl:for-each>
                                </div>
                                <div id="mediocentros" class="w-25 h-100 d-flex flex-column align-items-start justify-content-around">
                                    <xsl:for-each select="realmadrid/eleven/md/person">
                                        <div class="playerCard d-flex flex-column align-items-center justify-content-center">
                                            <div class="player d-flex align-items-center justify-content-center">
                                                <a class="m-0 p-0 display-6 text-decoration-none fw-bold"><xsl:value-of select="number"/></a>
                                            </div>
                                            <div class="playerName">
                                                <a><xsl:value-of select="name"/></a>
                                            </div>
                                        </div>
                                    </xsl:for-each>
                                </div>
                                <div id="delanteros" class="w-25 h-100 d-flex flex-column align-items-start justify-content-around">
                                    <xsl:for-each select="realmadrid/eleven/at/person">
                                        <div class="playerCard d-flex flex-column align-items-center justify-content-center">
                                            <div class="player d-flex align-items-center justify-content-center">
                                                <a class="m-0 p-0 display-6 text-decoration-none fw-bold"><xsl:value-of select="number"/></a>
                                            </div>
                                            <div class="playerName">
                                                <a><xsl:value-of select="name"/></a>
                                            </div>
                                        </div>
                                    </xsl:for-each>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="mt-5">
                        <h1 class="text-center text-dark">Cuerpo Técnico</h1>
                        <div class="mt-3 d-flex flex-wrap gap-5 justify-content-center">
                            <xsl:for-each select="realmadrid/coaches/person">
                                <div class="card text-white border-0" style="height: auto; width: 250px;">
                                    <img class="card-img" src="{img}" alt="{name}"/>
                                    <div class="card-img-overlay d-flex align-items-end">
                                        <div class="d-flex align-items-center">
                                            <div class="px-2 py-1 bg-dark-50 rounded-2">
                                                <h4 class="card-title p-0 m-0"><xsl:value-of select="name"/></h4>
                                                <p class="card-text p-0 m-0"><xsl:value-of select="position"/></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </xsl:for-each>
                        </div>
                    </section>
                    <section class="mt-5">
                        <h1 class="text-center text-dark">Banquillo</h1>
                        <div class="my-3 d-flex flex-wrap gap-5 justify-content-center">
                            <xsl:for-each select="realmadrid/bench/person">
                                <div class="card text-white border-0" style="height: auto; width: 250px;">
                                    <img class="card-img" src="{img}" alt="{name}"/>
                                    <div class="card-img-overlay d-flex align-items-end">
                                        <div class="d-flex align-items-center">
                                            <div class="px-2 py-1 bg-dark-50 rounded-2">
                                                <h4 class="card-title p-0 m-0"><xsl:value-of select="name"/></h4>
                                                <p class="card-text p-0 m-0"><xsl:value-of select="position"/></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </xsl:for-each>
                        </div>
                    </section>
                </main>
                <footer>
                    <!-- place footer here -->
                </footer>
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