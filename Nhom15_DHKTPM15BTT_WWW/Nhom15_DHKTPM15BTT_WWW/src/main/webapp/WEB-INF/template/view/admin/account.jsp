<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Spica Admin</title>
  <!-- base:css -->
  <link rel="stylesheet" href="<c:url value="/assets/assets-admin/vendors/mdi/css/materialdesignicons.min.css" />">
  <link rel="stylesheet" href="<c:url value="/assets/assets-admin/vendors/css/vendor.bundle.base.css" />">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="<c:url value="/assets/assets-admin/css/style.css" />" >
  <!-- endinject -->
  <link rel="shortcut icon" href="<c:url value="/assets/assets-admin/images/favicon.png" />" />

  <!-- table edit -->

  </style>
</head>

<body>
  <div class="container-scroller d-flex">

     <%@ include file="header.jsp" %>

      <div>
        <!-- row end -->
        <div class="main-panel">
          <div class="row">
            <div class="col-md-4">
              <div class="card card-user">
                <div class="image">
                  <img src="<c:url value="/assets/assets-admin/images/faces/face1.jpg" />" alt="..." width="405" name="fileInput">
                </div>
                <div class="card-body">
                  <div class="author">
                    
                    <div class="form-group">
                <label>File upload</label>
                <input type="file" name="img[]" class="file-upload-default">
                <div class="input-group col-xs-12">
                  <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image">
                  <span class="input-group-append">
                    <button style="background-color: #223E9C" class="file-upload-browse btn btn-primary" type="button">Upload</button>
                  </span>
                </div>
              </div>
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
                  <form>
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
                          <input type="text" class="form-control" placeholder="Username" value="michael23">
                        </div>
                      </div>
                      <div class="col-md-4 pl-1">
                        <div class="form-group">
                          <label for="exampleInputEmail1">Email address</label>
                          <input type="email" class="form-control" placeholder="Email">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6 pr-1">
                        <div class="form-group">
                          <label>First Name</label>
                          <input type="text" class="form-control" placeholder="Company" value="Chet">
                        </div>
                      </div>
                      <div class="col-md-6 pl-1">
                        <div class="form-group">
                          <label>Last Name</label>
                          <input type="text" class="form-control" placeholder="Last Name" value="Faker">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label>Address</label>
                          <input type="text" class="form-control" placeholder="Home Address"
                            value="Melbourne, Australia">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="update ml-auto mr-auto">
                        <button type="submit" style="background-color: #223E9C; border-style: none;"
                          class="btn btn-primary btn-round">Update
                          Profile</button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>




      <!-- row end -->

   <%@ include file="footer.jsp" %>

  <script src="<c:url value="/assets/assets-admin/vendors/js/vendor.bundle.base2.js" />"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <script src="<c:url value="/assets/assets-admin/vendors/chart/Chart.min.js" />"></script>
  <script src="<c:url value="/assets/assets-admin/js/jquery.cookie.js" />" type="text/javascript"></script>
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="<c:url value="/assets/assets-admin/js/off-canvas.js" />"></script>
  <script src="<c:url value="/assets/assets-admin/js/hoverable-collapse.js" />"></script>
  <script src="<c:url value="/assets/assets-admin/js/template.js" />"></script>
   <script src="<c:url value="/assets/assets-admin/js/file-upload.js" />"></script>
  <!-- endinject -->
  <!-- plugin js for this page -->
  <script src="<c:url value="/assets/assets-admin/js/jquery.cookie.js" />" type="text/javascript"></script>
  <!-- End plugin js for this page -->
  <!-- Custom js for this page-->
  <script src="<c:url value="/assets/assets-admin/js/dashboard.js" />"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  <!-- End custom js for this page-->
</body>

</html>