<?php
include("../../Database/Config/config.php");
$sql = "select * from category";
$result = mysqli_query($mysqli, $sql);
session_start();

?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>quản lý thông tin nội bộ công ty</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/home.css"> 
    <link rel="stylesheet" href="../css/aboutuspage.css">
    <link rel="stylesheet" href="../css/contract.css">
    <link rel="stylesheet" href="../css/menupage.css">
    <link rel="stylesheet" href="../css/department.css">
    <link rel="stylesheet" href="../css/resource.css">
    <link rel="stylesheet" href="../css/meeting.css">
    <link rel="stylesheet" href="../css/cart.css">
    <link rel="stylesheet" href="../css/cartnone.css">
    <link rel="stylesheet" href="../css/sign-in.css"> 
    <link rel="stylesheet" href="../css/tintucpage.css">
     <link rel="stylesheet" href="../css/content.css">
     <link rel="stylesheet" href="../css/product.css"> 
     <link rel="stylesheet" href="../css/thankyou.css">
     <link rel="stylesheet" href="../css/user.css">
    <link rel="stylesheet" href="https://cdnj s.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Kaushina">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"> 
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script> 
     <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
     <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
     <head>
  <body >
  <section class="myheader sticky-top" style="background-color: #976CDE;">
    <div class=" container-fluid fs-4 text-center headerig" style="padding: 3;">
      <div class="row align-items-center">
        <div class="col-md-2"><a href="index.php?action=homepage&query=none"><img src="../modules/images/Header-logo.jpg" class="img-fluid logo" alt="Logo" style="max-width: 140px; height:90px"></a></div>
        <div class="col-md-6">
          <section class="menu">
            <div class="container-fluid pt-3 navbarne">
              <div class="row">
                <nav class="navbar navbar-expand-lg" style="padding-top: 0; padding-bottom: 0">
                  <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                      <ul class="navbar-nav ps-3 navbarr">
                        <li class="nav-item">
                          <a class="nav-link active" aria-current="page" href="index.php?action=homepage&query=none" style="padding-top: 0; color:#4d2600;">Trang Chủ</a>
                        </li>
                        <li class="nav-item dropdown">
                          <a class="nav-link" href="#" data-bs-toggle="dropdown" aria-expanded="false" style="color: #4d2600; padding-top: 0;">
                            Quản Lý
                          </a>
                          <ul class="dropdown-menu">
                           <li><a class="dropdown-item" href="index.php?action=menupage&query=none">Nhân viên</a> </li>
                           <li><a class="dropdown-item" href="index.php?action=department&query=none">Phòng Ban</a> </li>
                           <li><a class="dropdown-item" href="index.php?action=resource&query=none">Tài Nguyên</a> </li>
                           <li><a class="dropdown-item" href="index.php?action=meeting&query=none">Phòng Họp</a> </li>
                      </ul>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link active" aria-current="page" href="index.php?action=aboutuspage&query=none" style="padding-top: 0; color:#4d2600;">About Us</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link active" aria-current="page" href="index.php?action=contractpage&query=none" style="padding-top: 0; color:#4d2600;">Liên Hệ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.php?action=tintucpage&query=none" style="padding-top: 0; color:#4d2600;">Tin Tức</a>
                          </li>
                      </ul>
                    </div>
                  </div>
                </nav>
              </div>
            </div>
          </section>
        </div>
        <div class="col-md-2" style="padding-top: 20px;">
          <div class="input-group mb-3">

            <!-- Gửi kết quả tìm kiếm -->
            <form method="POST" action="index.php?action=search&query=none" class="search-form">
        <input name='searchkey' type="text" class="form-control" style="color: #4d2600; font-family: Segoe UI;" placeholder="Tìm kiếm..." aria-label="Recipient's username" aria-describedby="button-addon2">
       <button class="btn btn-outline-secondary" style="color: #4d2600;" type="submit" id="button-addon2" ><i class="bi bi-search-heart"></i></button>
         </form>

          </div>
        </div>
        <div class="col-md-2">
          <section class="menu">
            <div class="container-fluid pt-3 navbarne">
              <div class="row">
                <nav class="navbar navbar-expand-lg" style="padding-top: 0; padding-bottom: 0">
                  <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                      <ul class="navbar-nav ps-3 navbarr">
                        <li class="nav-item dropdown">
                          <a class="nav-link" href="#" data-bs-toggle="dropdown" aria-expanded="false" style="color: #4d2600; padding-top: 0;">
                            <i class="bi bi-person-circle bigger-icon"></i>
                          </a>
                          <?php 
                       if(isset($_SESSION['dangnhap'])&&($_SESSION['dangnhap']!=""))
                               {
                         echo '<ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="index.php?action=profile&query=none&email='.$_SESSION['dangnhap'].'">'.$_SESSION['dangnhap'].'</a></li>
                           <li><a class="dropdown-item" href="signpage/logout.php">Đăng xuất</a></li>
                     </ul>';
                            } else echo '<ul class="dropdown-menu">
                     <li><a class="dropdown-item" href="signpage/sign-up.php">Đăng Ký</a></li>
                     <li><a class="dropdown-item" href="signpage/sign-in.php">Đăng Nhập</a></li>
                   </ul>';
                        ?> 
                    </div>
                  </div>
                </nav>
              </div>
            </div>
          </section>
        </div>
      </div>
    </div>
  </section>
 <?php
 include("main.php");
 ?> 
  </body>
  <section class="myfooter" style="background-color: #976CDE; color: #4d2600; font-family: Segoe UI;">
        <div class="container fs-4 py-3 text-center">
            <div class="row">
                <div class="col-md-3">
                    <img src="../modules/images/Header-logo.jpg" class="img-fluid logo" alt="Logo" style="max-width: 240px;">
                </div>
                <div class="col-md-3">
                    <h2>ĐỊA CHỈ</h2>
                    <div><i class="bi bi-house-heart"></i><span style="font-size: 16px;"> Số 09 Trần Thái Tông, P. Dịch Vọng, Q. Cầu Giấy, TP. Hà Nội</span></div>
                    <div><i class="bi bi-telephone"></i><span style="font-size: 16px;"> 0353780187</span></div>
                </div>
                <div class="col-md-4">
                    <h2>CHÍNH SÁCH</h2>
                    <ul>
                        <li><a href="#" style="font-size: 18px; color: #4d2600;" class="chinhsach">Chính sách và quy định chung</a></li>
                        <li><a href="#" style="font-size: 18px; color: #4d2600;" class="chinhsach">Chính sách bảo mật</a></li>
                    </ul>
                </div>
                <div class="col-md-2">
                    <h2>FOLLOW US</h2>
                    <ul>
                        <li><a href="#" style="font-size: 18px; color: #4d2600; font-family: Segoe UI;"><i class="bi bi-facebook"></i> thebestthing</a></li>
                        <li class="mailfooter"><a href="#" style="font-size: 18px; color: #4d2600; font-family: Segoe UI;"><i class="bi bi-envelope"></i><span style="font-size: 16px;"> thebestthing@manager.com</span></li></a>
                    </ul>
                </div>
            </div>
    </section>
</html>