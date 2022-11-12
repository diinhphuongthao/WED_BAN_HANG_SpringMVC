<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Amado - Furniture Ecommerce Template | Shop</title>

  <!-- Favicon  -->
   <link rel="icon" href="<c:url value="/assets/img/core-img/favicon.ico" />">

    <!-- Core Style CSS -->
 	<link rel="stylesheet" href="<c:url value="/assets/css/font-awesome.min.css" />" >
    <link rel="stylesheet" href="<c:url value="/assets/css/core-style.css" /> ">
<link rel="stylesheet"
	href="<c:url value="/assets/css/position.css" />">
	<link rel="stylesheet" href="<c:url value="/assets/css/owl.carousel.min.css" /> ">
    <link rel="stylesheet" href="<c:url value="/assets/css/owl.theme.default.min.css" /> ">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css">
	<link rel="stylesheet" href="<c:url value="/assets/css/animate.css" /> ">
	<link rel="stylesheet" href="<c:url value="/assets/bootstrap/style.css" /> ">
 <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</head>

<body>
    <!-- Search Wrapper Area Start -->
        <%@ include file="header.jsp" %>
    <!-- Header Area End -->

        <div class="shop_sidebar_area">

            <!-- ##### Single Widget ##### -->
            <div class="widget catagory mb-50">
                <!-- Widget Title -->
                <h6 class="widget-title mb-30">Catagories</h6>

                <!--  Catagories  -->
                <div class="catagories-menu">
                    <ul>
                    <c:forEach var="category" items="${dsCategory }" varStatus="index">
                    <c:if test="${index.first }">
						<li class="active">
					</c:if>
					<c:if test="${not index.first }">
						<li class="">
					</c:if>
                    <a href="caterogy?txtC=${category.categoryId}" >${category.name }</a></li>
                    </c:forEach>
                       
                    </ul>
                </div>
            </div>

            <!-- ##### Single Widget ##### -->
            <div class="widget brands mb-50">
                <!-- Widget Title -->
                <h6 class="widget-title mb-30">Brands</h6>

                <div class="widget-desc">
                <!-- Single Form Check -->
                <c:forEach var="branchs" items="${dsBranchs }">
                <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="${branchs.title }">
                        <label class="form-check-label" for="${branchs.title }">${branchs.title }</label>
                    </div>
                </c:forEach>
                </div>
            </div>

            <!-- ##### Single Widget ##### -->
            <div class="widget color mb-50">
                <!-- Widget Title -->
                <h6 class="widget-title mb-30">Color</h6>

                <div class="widget-desc">
                    <ul class="d-flex">
                    <c:forEach var="colors" items="${dsColors }">
                    <li><a href="${colors[0] }" class="${colors[1] }"></a></li>
                    </c:forEach>
                    </ul>
                </div>
            </div>

            <!-- ##### Single Widget ##### -->
            <div class="widget price mb-50">
                <!-- Widget Title -->
                <h6 class="widget-title mb-30">Price</h6>

                <div class="widget-desc">
                    <div class="slider-range">
                        <div data-min="10" data-max="1000" data-unit="$" class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" data-value-min="10" data-value-max="1000" data-label-result="">
                            <div class="ui-slider-range ui-widget-header ui-corner-all"></div>
                            <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                            <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                        </div>
                        <div class="range-price">$10 - $1000</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="amado_product_area section-padding-100">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-12">
                        <div class="product-topbar d-xl-flex align-items-end justify-content-between">
                            <!-- Total Products -->
                            <div class="total-products">
                                <p>Showing 1-6 0f ${tongSLProduct}</p>
                                <div class="view d-flex">
                                    <a href="#"><i class="fa fa-th-large" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-bars" aria-hidden="true"></i></a>
                                </div>
                            </div>
                            <!-- Sorting -->
                            <div class="product-sorting d-flex">
                                <div class="sort-by-date d-flex align-items-center mr-15">
                                    <p>Sort by</p>
                                    <form action="#" method="get">
                                        <select name="select" id="sortBydate">
                                            <option value="value">Date</option>
                                            <option value="value">Newest</option>
                                            <option value="value">Popular</option>
                                        </select>
                                    </form>
                                </div>
                                <div class="view-product d-flex align-items-center">
                                    <p>View</p>
                                    <form action="#" method="get">
                                        <select name="select" id="viewProduct">
                                            <option value="value">12</option>
                                            <option value="value">24</option>
                                            <option value="value">48</option>
                                            <option value="value">96</option>
                                        </select>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

	<!-- 		Product -->
                <div class="row">
				<c:forEach items="${dsProduct}" var="o">
	     			 <!-- Single Product Area 1-->
                    <div class="col-12 col-sm-6 col-md-12 col-xl-6">
                        <div class="single-product-wrapper">
                            <!-- Product Image -->
                            <div class="product-img">
                                <img src="<c:url value="${o[1]}" />" alt="">
                                <!-- Hover Thumb -->
                                <img class="hover-img" src="${o[1]}" alt="">
                            </div>

                            <!-- Product Description -->
                            <div class="product-description d-flex align-items-center justify-content-between">
                                <!-- Product Meta Data -->
                                <div class="product-meta-data">
                                    <div class="line"></div>
                                    <p class="product-price">$${o[3]}</p>
                                    <a href="<c:url value="details?idProduct=${o[0]}" />">
                                        <h6>${o[2]}</h6>
                                    </a>
                                </div>
                                <!-- Ratings & Cart -->
                                <div class="ratings-cart text-right">
                                    <div class="ratings">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </div>
                                    <div class="cart">
                                        <a href="<c:url value="/cart?id=${o[0]}" />" data-toggle="tooltip" data-placement="left" title="Add to Cart"><img src="<c:url value="/assets/img/core-img/cart.png" />" alt=""></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

               	</c:forEach>
	  </div>
	<!-- chia so trang -->
                <div class="row">
                    <div class="col-12">
                        <!-- Pagination -->
                        <nav aria-label="navigation">
                          <ul class="pagination justify-content-end mt-50">
                          <c:if test="${tag>1 }">
                           <li class="page-item"><a href="?index=${tag-1}">Previous</a> </li>
                          </c:if>
                            <c:forEach begin="1" end="${endpage}" var="i">
                             
                             <li class= "${tag==i? "page-item active" : "page-item" }" ><a class="page-link" href="?txt=${tenS}&index=${i}&txtC=${tenC}">${i}.</a></li>
                         
                            </c:forEach>
                            <c:if test="${tag<endpage }">
                               <li class="page-item"><a href="?index=${tag+1}">Next</a> </li>
<%--                                ?index=${i} --%>
                          </c:if>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Main Content Wrapper End ##### -->
    <!-- ##### Newsletter Area Start ##### -->
      <%@ include file="footer.jsp" %>
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

</body>

</html>