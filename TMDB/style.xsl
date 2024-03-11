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
				<title>TMDB</title>
				<!-- Required meta tags -->
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
				
				<!-- Bootstrap CSS v5.2.1 -->
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
					integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
				
				<!-- Custom CSS -->
				<link rel="stylesheet" href="css/style.css" />
			</head>
			
			<body>
				<header>
					<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
						<div class="container-fluid">
							<a class="navbar-brand" href="#">
								<img src="img/logotmdb.png" alt="Logo" style="height: 35px;" />
							</a>
							<button class="navbar-toggler d-lg-none" type="button" data-bs-toggle="collapse"
								data-bs-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse d-flex justify-content-end" id="collapsibleNavId">
								<div class="gap-2 d-flex">
									<button type="button" name="" id="personsBtn" class="btn btn-success">
										Actores
									</button>
									<button type="button" name="" id="filmsBtn" class="btn btn-success">
										Películas
									</button>
									<button type="button" name="" id="allBtn" class="btn btn-success">
										Todos
									</button>
								</div>
							</div>
						</div>
					</nav>
				</header>
				
				<main>
					<div class="container mt-3">
						<div id="persons" class="row row-cols-3 d-flex g-3 justify-content-center">
							<xsl:for-each select="tmdb/persons/person">
								<div class="col">
									<div class="card">
										<xsl:choose>
											<xsl:when test="foto = ''">
												<img class="card-img-top" src="img/noimageperson.png" alt="No Foto Actor" />
											</xsl:when>
											<xsl:otherwise>
												<img class="card-img-top" src="{foto}" alt="Foto Actor" />
											</xsl:otherwise>
										</xsl:choose>
										<div class="card-body">
											<h4 class="card-title"><xsl:value-of select="@nombre"/></h4>
											<p class="card-text"><xsl:value-of select="peliculas"/></p>
										</div>
									</div>
								</div>
							</xsl:for-each>
						</div>
						<div id="films" class="row row-cols-3 d-flex g-3 justify-content-center my-3">
							<xsl:for-each select="tmdb/movies/movie">
								<div class="col">
									<div class="card" style="max-width: 540px;">
										<div class="row g-0">
											<div class="col-md-4">
												<xsl:choose>
													<xsl:when test="foto = ''">
														<img class="card-img-top rounded-start-2 rounded-end-0" src="img/noimagemovie.png" alt="No Foto Pelicula" />
													</xsl:when>
													<xsl:otherwise>
														<img class="card-img-top rounded-start-2 rounded-end-0" src="{foto}" alt="Foto Pelicula" />
													</xsl:otherwise>
												</xsl:choose>
											</div>
											<div class="col-md-8">
												<div class="card-body">
													<h5 class="card-title"><xsl:value-of select="@titulo"/></h5>
													<p class="card-text">
														<xsl:value-of select="fecha"/>
													</p>
													<xsl:choose>
														<xsl:when test="rating &lt;= 60">
															<p class="card-text">
																<span class="bg-danger px-2 py-1 rounded-1">
																	<xsl:value-of select="rating"/>
																</span>
															</p>
														</xsl:when>
														<xsl:when test="rating &lt; 70">
															<p class="card-text">
																<span class="bg-warning px-2 py-1 rounded-1">
																	<xsl:value-of select="rating"/>
																</span>
															</p>
														</xsl:when>
														<xsl:otherwise>
															<p class="card-text">
																<span class="bg-success px-2 py-1 rounded-1">
																	<xsl:value-of select="rating"/>
																</span>
															</p>
														</xsl:otherwise>
													</xsl:choose>
												</div>
											</div>
										</div>
									</div>
								</div>
							</xsl:for-each>
						</div>
					</div>
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