<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<!-- End of Async Drift Code -->
<!-- Start of Async Drift Code -->
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
<title>Amado - Furniture Ecommerce Template | Home</title>

<!-- Favicon  -->
<link rel="icon"
	href="<c:url value="/assets/img/core-img/favicon.ico" />">

<!-- Core Style CSS -->
<link rel="stylesheet"
	href="<c:url value="/assets/css/font-awesome.min.css" />">
<link rel="stylesheet"
	href="<c:url value="/assets/css/core-style.css" /> ">
<link rel="stylesheet"
	href="<c:url value="/assets/css/font-awesome.css"/> ">

<!-- Core Style CSS -->
<link href="<c:url value="/assets/css/prettyPhoto.css" />"
	rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/assets/css/style.css" />">
<!-- Slide Style CSS -->


<link rel="stylesheet"
	href="<c:url value="/assets/css/owl.carousel.min.css" /> ">
<link rel="stylesheet"
	href="<c:url value="/assets/css/owl.theme.default.min.css" /> ">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css">
<link rel="stylesheet" href="<c:url value="/assets/css/animate.css" /> ">
<link rel="stylesheet"
	href="<c:url value="/assets/bootstrap/style.css" /> ">
<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</head>

<body>
	<!-- Search Wrapper Area Start -->

	<%@ include file="header.jsp"%>

	<!-- Header Area End -->

	<!-- Product Catagories Area Start -->
	<div class="products-catagories-area clearfix">
		<!--/slider-->
		<section class="ftco-section">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<h2 class="heading-section mb-5">Product New</h2>
					</div>
					<div class="col-md-12">
						<div class="featured-carousel owl-carousel">
							<c:forEach var="slide" items="${listProductSlides}">
								<div class="item">
									<div class="row justify-content-center">
										<div class="col-md-11">
											<div class="testimony-wrap d-md-flex">
											<a href="<c:url value="details?idProduct=${slide[1]}" />">
												<img class="img" src="<c:url value="${slide[0]}" />" alt=""></a>
												<div
													class="text text-center p-4 py-xl-5 px-xl-5 d-flex align-items-center">
													<div class="desc w-100">
														<p class="h3 mb-5">"${slide[2] }"</p>
														<div class="pt-4">
															<p class="name mb-0">&mdash; ${slide[2]}</p>
															<span class="position">${slide[4]}</span>
														</div>
													</div>
												</div>
												
											</div>
										</div>
									</div>
								</div>
							</c:forEach>



						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- slider -->
		<div class="col-md-12 text-center">
			<h2 class="heading-section mb-5">Product Highlight</h2>

		</div>
		<div class="amado-pro-catagory clearfix">
			<c:forEach items="${listProduct}" var="c">
				<!-- Single Catagory -->
				<div class="single-products-catagory clearfix">
					<a href="<c:url value="details?idProduct=${c[1]}" />"> <img
						src="<c:url value="${c[0]}" />" alt=""> <!-- Hover Content -->
						<div class="hover-content">
							<div class="line"></div>
							<p>From $${c[3]}</p>
							<h4>${c[2]}</h4>
						</div>
					</a>
				</div>
			</c:forEach>
		</div>

	</div>
	<!-- Product Catagories Area End -->
	</div>


	<!-- ##### Main Content Wrapper End ##### -->
	<!-- ##### Newsletter Area Start ##### -->

	<%@ include file="footer.jsp"%>

	<!-- ##### Footer Area End ##### -->

	<!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
	<script src="<c:url value="/assets/js/jquery/jquery-2.2.4.min.js" />"></script>
	<!-- Popper js -->
	<script src="<c:url value="/assets/js/popper.min.js" />"></script>
	<!-- Bootstrap js -->
	<script src="<c:url value="/assets/js/bootstrap.min.js" />"></script>
	<!-- Plugins js -->
	<script src="<c:url value="/assets/js/plugins.js" />"></script>
	<!-- Active js -->
	<script src="<c:url value="/assets/js/active.js" />"></script>
	<script src="<c:url value="/assets/js/script.js" />"></script>
	<script src="<c:url value="/assets/js/suggestions.js" />"></script>

	<!-- Header contact -->
	<script src="<c:url value="/assets/js/popper.js" />"></script>
	<script src="<c:url value="/assets/js/owl.carousel.min.js" />"></script>
	<script src="<c:url value="/assets/js/main.js" />"></script>
</body>

</html>