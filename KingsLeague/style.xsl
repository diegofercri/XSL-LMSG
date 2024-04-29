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
				<title>Kings League</title>
				<!-- Required meta tags -->
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
				
				<!-- Bootstrap CSS v5.2.1 -->
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
					integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
				
				<!-- Custom CSS -->
				<link rel="stylesheet" href="css/style.css" />
			</head>
			
			<body class="bg-dark">
				<header>
					<nav class="navbar navbar-expand-sm navbar-dark bg-dark d-flex flex-column py-2">
						<div class="container d-flex justify-content-between">
							<a class="navbar-brand" href="#">
								<img src="assets/logo.svg" alt="Logo" style="height: auto; width: 80px" />
							</a>
							<div>
								<div class="w-100 d-flex justify-content-center">
									<a class="nav-link fs-1 fw-bold text-warning text-center p-2" href="#">Kings League</a>
								</div>
							</div>
							<div>
								<a class="btn btn-warning btn-sm px-2 py-1" href="#" role="button">Tienda</a>
							</div>
						</div>
						<div class="mt-2">
							<div class="row">
								<xsl:for-each select="kingsleague/equipo">
									<div class="col-3 col-md-2 col-lg-1 p-2">
										<div class="card" style="border-radius: 70px; {gradiente}">
											<a href="#{@abr}" class="text-decoration-none text-center p-2">
												<img class="card-img-top mt-2" src="{escudo}" alt="{@nombre}" />
												<div class="m-auto">
													<h4 class="card-title text-white"><xsl:value-of select="@abr"/></h4>
												</div>
											</a>
										</div>
									</div>
								</xsl:for-each>
							</div>
						</div>
					</nav>
					
				</header>
				<main class="bg-dark">
					<xsl:for-each select="kingsleague/equipo">
						<section id="{@abr}" class="equipo">
							<div class="mt-3 position-relative">
								<div class="position-absolute titulo-eq">
									<img class="mt-2 w-100 h-auto" src="img/escudo.png" alt="Title" />
									<div class="m-auto mt-1">
										<h4 class="text-white text-center">1K</h4>
									</div>
								</div>
								<video autoplay="autoplay" loop="loop" class="w-100 h-auto m-0 p-0" src="{video}" poster="{poster}" />
							</div>
							<div class="w-100 d-flex justify-content-center mt-3">
								<div class="card border-0"
									style="width:30rem; {gradiente}">
									<img src="{presidente/imagen}" class="card-img-top" alt="..." />
									<div class="card-body">
										<h5 class="card-title text-center"><xsl:value-of select="presidente/@nombre"/></h5>
										<h6 class="card-subtitle mb-2 text-muted text-center">Presidente</h6>
									</div>
								</div>
							</div>
							<div class="row d-flex justify-content-center mt-3">
								<div class=" col-6 col-md-4 col-lg-3 p-2">
									<div class="card border-0" style="{gradiente}">
										<img src="{entrenador/imagen}" class="card-img-top" alt="{entrenador/@nombre}" />
										<div class="card-body">
											<h3 class="card-title text-center"><xsl:value-of select="entrenador/@nombre"/></h3>
											<p class="card-text text-center">Entrenador</p>
										</div>
									</div>
								</div>
								<xsl:for-each select="players/player">
									<div class="col-6 col-md-4 col-lg-3 p-2">
										<div class="card border-0" style="{../../gradiente}">
											<img src="{imagen}" class="card-img-top" alt="{@nombre}" />
											<div class="card-body">
												<h3 class="card-title text-center"><xsl:value-of select="@nombre"/></h3>
												<p class="card-text text-center"><xsl:value-of select="demarcacion"/></p>
											</div>
											<xsl:choose>
												<xsl:when test="media!=''">
													<div class="position-absolute top-0 end-0 m-2 bg-warning p-2 rounded-2 d-flex flex-column">
														<a class="fw-bold text-center text-decoration-none text-dark">Media</a>
														<a class="text-center text-decoration-none text-dark"><xsl:value-of select="media"/></a>
													</div>
												</xsl:when>
											</xsl:choose>
										</div>
									</div>
								</xsl:for-each>
							</div>
						</section>
					</xsl:for-each>
				</main>
				<footer class="d-flex justify-content-center bg-dark">
					<a>&copy; Diego Fdez Criado</a>
				</footer>
				<!-- Bootstrap JavaScript Libraries -->
				<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
					integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
					crossorigin="anonymous"></script>
				
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
					integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
					crossorigin="anonymous"></script>
				
				<!-- Custom JavaScript -->
				<script src="js/equipos.js"></script>
			</body>
			
		</html>
		
	</xsl:template>
</xsl:stylesheet>