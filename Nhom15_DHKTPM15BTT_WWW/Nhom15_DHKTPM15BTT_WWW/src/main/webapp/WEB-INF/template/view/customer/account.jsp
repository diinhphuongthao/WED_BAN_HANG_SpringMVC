<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>


<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Amado - Furniture Ecommerce Template | My Purchase</title>
    <!-- Favicon  -->
    <link rel="icon" href="<c:url value="/assets/img/core-img/favicon.ico" />">

    <!-- Core Style CSS -->
 	<link rel="stylesheet" href="<c:url value="/assets/css/font-awesome.min.css" />" >
    <link rel="stylesheet" href="<c:url value="/assets/css/core-style.css" /> ">
    <link rel="stylesheet"
	href="<c:url value="/assets/css/position.css" />">
  <script>
    function chooseFile() {
       document.getElementById("fileInput").click();
    }
 </script>

</head>

<body>
    <!-- Search Wrapper Area Start -->
       <%@ include file="header.jsp" %>
    <!-- Header Area End -->

        <div class="content">
      <div class="row">
        <div class="col-md-4">
          <div class="card card-user">
            <div class="image" >
              <img src="<c:url value="/assets/img/bg-img/1.jpg" />" alt="..." width="470"  name="fileInput">
            </div>
            <div class="card-body">
              <div class="author">
                <div style="height:0px;overflow:hidden">
                  <input type="file" id="fileInput" name="fileInput" />
               </div>
               <button style="background-color: #FBB710; border-style: none;" class="btn btn-primary btn-round" type="button" onclick="chooseFile();">Select Image</button>
                </a>
                <p class="description">
                  File size: maximum 1 MB <br>
                  File extension: .JPEG, .PNG
                </p>
              </div>
            </div>
            <div class="card-footer">
              <hr>
              <div class="button-container">
                <div class="row">
                  <div class="col-lg-3 col-md-6 col-6 ml-auto">
                    <h5>12<br><small>Files</small></h5>
                  </div>
                  <div class="col-lg-4 col-md-6 col-6 ml-auto mr-auto">
                    <h5>2GB<br><small>Used</small></h5>
                  </div>
                  <div class="col-lg-3 mr-auto">
                    <h5>24,6$<br><small>Spent</small></h5>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
        <div class="col-md-8">
          <div class="card card-user">
            <div class="card-header">
              <h5 class="card-title">Edit Profile</h5>
            </div>
            <div class="card-body">
            <c:forEach  items="${listuser}" var="u">
              <form action="updateuser" method="get">
                <div class="row">
                  <div class="col-md-5 pr-1">
                    <div class="form-group">
                      <label>Username (disabled)</label>
                      <input type="text" class="form-control" disabled="" placeholder="Company"
                        value="Creative Code Inc.">
                    </div>
                  </div>
                  <div class="col-md-3 px-1">
                    <div class="form-group">
                      <label>Phone</label>
                      <input type="text" class="form-control" name="phone" disabled=""  placeholder="Username" value="${u.phone }">
                    </div>
                  </div>
                  <div class="col-md-4 pl-1">
                    <div class="form-group">
                      <label for="exampleInputEmail1">Email address</label>
                      <input type="email" class="form-control" name="email" placeholder=${u.email }>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6 pr-1">
                    <div class="form-group">
                      <label>First Name</label>
                      <input type="text" class="form-control" placeholder="Company" name="firstName" value="${u.firstName }">
                    </div>
                  </div>
                  <div class="col-md-6 pl-1">
                    <div class="form-group">
                      <label>Last Name</label>
                      <input type="text" class="form-control" placeholder="Last Name" name="lastName" value="${u.lastName }">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label>Address</label>
                      <input type="text" class="form-control" placeholder="Home Address" name="address" value="${u.address }">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="update ml-auto mr-auto">
                    <button type="submit" style="background-color: #FBB710; border-style: none;" class="btn btn-primary btn-round">Update
                      Profile</button>
                  </div>
                </div>
              </form>
               </c:forEach>
            </div>
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