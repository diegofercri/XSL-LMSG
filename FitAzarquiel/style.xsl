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
		
		<html lang="en">
			
			<head>
				<title>Fit Azarquiel</title>
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
			
			<body class="container shadow">
				<header>
					<nav class="navbar navbar-expand-sm navbar-light bg-light" id="start">
						<div class="container-fluid">
							<a class="navbar-brand" href="#">
								<img src="img/logo.png" alt="Logo" style="height: 60px;" />
							</a>
							<button class="navbar-toggler d-lg-none" type="button" data-bs-toggle="collapse"
								data-bs-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<h1 class="text-c1 text-center">IES Azarquiel</h1>
							<a class="navbar-brand" href="#">
								<img src="img/logo.png" alt="Logo" style="height: 60px;" />
							</a>
						</div>
					</nav>
					<div class="row justify-content-center">
						<xsl:for-each select="fitness/target">
							<div class="col-6 col-md-4 col-lg-3 col-xl-2 mt-3">
								<div class="card">
									<a href="#{@name}" class="text-decoration-none">
										<img class="card-img-top" src="img/targetmap.png" alt="{@name}" />
										<div class="card-body">
											<h4 class="card-title text-center text-c1 fs-5 fw-bold text-uppercase"><xsl:value-of select="@name"/></h4>
										</div>
									</a>
								</div>
							</div>
						</xsl:for-each>
					</div>
				</header>
				<main>
					<xsl:for-each select="fitness/target">
						<section id="{@name}">
							<div class="mt-4 py-3 bg-c1">
								<h2 class="text-center text-white fw-bold text-uppercase"><xsl:value-of select="@name"/></h2>
							</div>
							<div class="row mt-2 justify-content-center">
								<xsl:for-each select="exercise">
									<div class="col-12 col-lg-6" id="{id}">
										<div class="card mt-3">
											<div class="row g-0">
												<div class="col-md-4">
													<xsl:choose>
														<xsl:when test="gifUrl = ''">
															<img class="img-fluid rounded-start" src="img/noimage.png" alt="No photo" />
														</xsl:when>
														<xsl:otherwise>
															<img class="img-fluid rounded-start" src="{gifUrl}" alt="{name} image" />
														</xsl:otherwise>
													</xsl:choose>
												</div>
												<div class="col-md-8">
													<div class="card-body">
														<h4 class="card-title text-c1 fw-bold text-uppercase fs-4">
															<xsl:value-of select="name"/>
														</h4>
														<a class="card-text text-c1 text-decoration-none">
															Body Part: <xsl:value-of select="bodyPart"/>
															<br/>
															Equipment: <xsl:value-of select="equipment"/>
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</xsl:for-each>
							</div>
						</section>
					</xsl:for-each>
					
					
					<a href="#start" class="position-fixed bottom-0 start-0 m-3 text-danger">
						<div>
							<i class="fa fa-arrow-up" aria-hidden="true"></i>
						</div>
					</a>
					
					<a href="#start" class="position-fixed bottom-0 end-0 m-3 text-danger">
						<div>
							<i class="fa fa-arrow-up" aria-hidden="true"></i>
						</div>
					</a>
					
				</main>
				
				<footer>
					<div class="mt-4 py-3 bg-light">
						<h3 class="text-center text-c1">XSL-DAM-DAW</h3>
					</div>
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