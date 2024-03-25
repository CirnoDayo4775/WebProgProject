<?php 
session_start();


include dirname(__DIR__)."/../mainSystem/connectDB.php";
if(empty($_SESSION['username'])) {
}else{
  $username = $_SESSION['username'];
}
$sqler = "select * from productlist";

$result = $con->query($sqler);

$sql = "select * from userdata where username = '".$username . "'"; 
$DataUser = $con->query($sql)->fetch_assoc(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Welcome</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
    integrity="sha512-gu/rqYmDNJBbWDkgCj3m8bpSNXu8swNJAv8IHGz9RFNS6jIk5m/6k+5rmQ9D+JvhDzYUYfaiCFK2uLwYZCT0lA=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <!-- Font Awesome CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
    integrity="sha512-gu/rqYmDNJBbWDkgCj3m8bpSNXu8swNJAv8IHGz9RFNS6jIk5m/6k+5rmQ9D+JvhDzYUYfaiCFK2uLwYZCT0lA=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />

  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700|Nunito|Lora|Dancing+Script|Satisfy|Fjalla+One|Oswald|Montserrat|Supermarket|Sanchez|Roboto|Quicksand|Pacifico|Raleway|Kanit|Prompt|Trirong|Taviraj|Itim|Chonburi|Mitr|Athiti|Pridi|Maitree|Pattaya|Sriracha|Sarabun|Chakra+Petch|Mali|Bai+Jamjuree|Krub|K2D|Niramit|Charm|Srisakdi|Thasadith|Kodchasan|KoHo|Charmonman|Poppins|Fahkwang|Noto+Sans+Thai|IBM+Plex+Sans+Thai|Noto+Serif+Thai|Noto+Sans+Thai+Looped|IBM+Plex+Sans+Thai+Looped&subset=thai,latin" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
  <link rel="stylesheet" href="Css/home.css" />
</head>
<style>
  @import url(http://fonts.googleapis.com/css?family=Kanit);

  /* เพิ่ม animation pulse */
  @keyframes pulse {
    0% {
      transform: scale(1);
    }
    50% {
      transform: scale(1.05);
    }
    100% {
      transform: scale(1);
    }
  }

  /* ระบุคุณสมบัติของภาพเมื่อโฮเวอร์ */
  .img-fluid:hover {
    animation: pulse 0.5s ease-in-out infinite;
  }
  body {
    font-family: 'Kanit', sans-serif;
  }

  .carousel-item img {
    border-radius: 5px;
  }

  .star-rating i {
    color: #FFD700;
  }

  .navbar-nav {
    margin-left: 0;
    margin-right: 0;
    padding-left: 30px;
    padding-right: 30px;
  }

  .navbar-collapse {
    justify-content: flex-end;
  }

  .navbar-form {
    margin-left: -30px;
  }
  
</style>

<body>
  <!-- nav -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="#"></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item dropdown">
                <a class="nav-link" href="#">
                  หน้าแรก
                </a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
                  data-bs-toggle="dropdown" aria-expanded="false">
                  สินค้าผู้ชาย
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                  <li><a class="dropdown-item" href="#">Action</a></li>
                  <li><a class="dropdown-item" href="#">Another action</a></li>
                  <li><a class="dropdown-item" href="#">Something else here</a></li>
                </ul>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
                  data-bs-toggle="dropdown" aria-expanded="false">
                  สินค้าผู้หญิง
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                  <li><a class="dropdown-item" href="#">Action</a></li>
                  <li><a class="dropdown-item" href="#">Another action</a></li>
                  <li><a class="dropdown-item" href="#">Something else here</a></li>
                </ul>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
                  data-bs-toggle="dropdown" aria-expanded="false">
                  สินค้าเด็ก
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                  <li><a class="dropdown-item" href="#">Action</a></li>
                  <li><a class="dropdown-item" href="#">Another action</a></li>
                  <li><a class="dropdown-item" href="#">Something else here</a></li>
                </ul>
              </li>
         <?php if(empty($_SESSION['username'])) {


?> 



        
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="loginpage.html"><svg xmlns="http://www.w3.org/2000/svg" width="16"
                height="16" fill="currentColor" class="bi bi-arrow-right-square-fill me-1" viewBox="0 0 16 16">
                <path
                  d="M0 14a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2zm4.5-6.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5a.5.5 0 0 1 0-1" />
              </svg>เข้าสู่ระบบ</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="sign_up.html"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                fill="currentColor" class="bi bi-person-fill-add me-1" viewBox="0 0 16 16">
                <path
                  d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0m-2-6a3 3 0 1 1-6 0 3 3 0 0 1 6 0" />
                <path
                  d="M2 13c0 1 1 1 1 1h5.256A4.5 4.5 0 0 1 8 12.5a4.5 4.5 0 0 1 1.544-3.393Q8.844 9.002 8 9c-5 0-6 3-6 4" />
              </svg>สมัครสมาชิก</a>
          </li>
<?php }else{ ?>
  <a class="nav-link active" aria-current="page" href="../../mainSystem/logout.php"><svg xmlns="http://www.w3.org/2000/svg" width="16"
                height="16" fill="currentColor" class="bi bi-arrow-right-square-fill me-1" viewBox="0 0 16 16">
                
              </svg><?php echo $DataUser["userFirstName"].' '.$DataUser["UserLastName"] ?></a>
  <?php } ?>
        </ul>
        <form class="d-flex">
          <a class="dropdown-item" href="#"> MARSHALL
          </a>
          <a class="dropdown-item" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
              fill="currentColor" class="bi bi-cart-check-fill" viewBox="0 0 16 16">
              <path
                d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0m7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0m-1.646-7.646-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L8 8.293l2.646-2.647a.5.5 0 0 1 .708.708" />
            </svg>
          </a>
          <a class="dropdown-item" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
              fill="currentColor" class="bi bi-facebook " viewBox="0 0 16 16">
              <path
                d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951" />
            </svg></a>
          <a class="dropdown-item" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
              fill="currentColor" class="bi bi-line" viewBox="0 0 16 16">
              <path
                d="M8 0c4.411 0 8 2.912 8 6.492 0 1.433-.555 2.723-1.715 3.994-1.678 1.932-5.431 4.285-6.285 4.645-.83.35-.734-.197-.696-.413l.003-.018.114-.685c.027-.204.055-.521-.026-.723-.09-.223-.444-.339-.704-.395C2.846 12.39 0 9.701 0 6.492 0 2.912 3.59 0 8 0M5.022 7.686H3.497V4.918a.156.156 0 0 0-.155-.156H2.78a.156.156 0 0 0-.156.156v3.486c0 .041.017.08.044.107v.001l.002.002.002.002a.15.15 0 0 0 .108.043h2.242c.086 0 .155-.07.155-.156v-.56a.156.156 0 0 0-.155-.157m.791-2.924a.156.156 0 0 0-.156.156v3.486c0 .086.07.155.156.155h.562c.086 0 .155-.07.155-.155V4.918a.156.156 0 0 0-.155-.156zm3.863 0a.156.156 0 0 0-.156.156v2.07L7.923 4.832l-.013-.015v-.001l-.01-.01-.003-.003-.011-.009h-.001L7.88 4.79l-.003-.002-.005-.003-.008-.005h-.002l-.003-.002-.01-.004-.004-.002-.01-.003h-.002l-.003-.001-.009-.002h-.006l-.003-.001h-.004l-.002-.001h-.574a.156.156 0 0 0-.156.155v3.486c0 .086.07.155.156.155h.56c.087 0 .157-.07.157-.155v-2.07l1.6 2.16a.2.2 0 0 0 .039.038l.001.001.01.006.004.002.008.004.007.003.005.002.01.003h.003a.2.2 0 0 0 .04.006h.56c.087 0 .157-.07.157-.155V4.918a.156.156 0 0 0-.156-.156zm3.815.717v-.56a.156.156 0 0 0-.155-.157h-2.242a.16.16 0 0 0-.108.044h-.001l-.001.002-.002.003a.16.16 0 0 0-.044.107v3.486c0 .041.017.08.044.107l.002.003.002.002a.16.16 0 0 0 .108.043h2.242c.086 0 .155-.07.155-.156v-.56a.156.156 0 0 0-.155-.157H11.81v-.589h1.525c.086 0 .155-.07.155-.156v-.56a.156.156 0 0 0-.155-.157H11.81v-.589h1.525c.086 0 .155-.07.155-.156Z" />
            </svg></a>
          <a class="dropdown-item" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
              fill="currentColor" class="bi bi-youtube" viewBox="0 0 16 16">
              <path
                d="M8.051 1.999h.089c.822.003 4.987.033 6.11.335a2.01 2.01 0 0 1 1.415 1.42c.101.38.172.883.22 1.402l.01.104.022.26.008.104c.065.914.073 1.77.074 1.957v.075c-.001.194-.01 1.108-.082 2.06l-.008.105-.009.104c-.05.572-.124 1.14-.235 1.558a2.01 2.01 0 0 1-1.415 1.42c-1.16.312-5.569.334-6.18.335h-.142c-.309 0-1.587-.006-2.927-.052l-.17-.006-.087-.004-.171-.007-.171-.007c-1.11-.049-2.167-.128-2.654-.26a2.01 2.01 0 0 1-1.415-1.419c-.111-.417-.185-.986-.235-1.558L.09 9.82l-.008-.104A31 31 0 0 1 0 7.68v-.123c.002-.215.01-.958.064-1.778l.007-.103.003-.052.008-.104.022-.26.01-.104c.048-.519.119-1.023.22-1.402a2.01 2.01 0 0 1 1.415-1.42c.487-.13 1.544-.21 2.654-.26l.17-.007.172-.006.086-.003.171-.007A100 100 0 0 1 7.858 2zM6.4 5.209v4.818l4.157-2.408z" />
            </svg></a>
        </form>
      </div>
    </div>
  </nav>
  <!-- nav -->
  <div class="d-flex justify-content-center mt-3">
    <img src="./Rum/0.png" class="img-fluid" width="1200w" style="border-radius: 30px; box-shadow: 0px 0px 20px 0px rgba(0,0,0,0.5);">
  </div>

  <div style="text-align: center; margin-top: 10px;" data-mce-style="text-align: center;"><img
      src="https://image.makewebeasy.net/makeweb/0/FWayPUkmk/DefaultData/Untitled1.jpg?v=202305101549"
      data-mce-src="https://image.makewebeasy.net/makeweb/0/FWayPUkmk/DefaultData/Untitled1.jpg?v=202305101549"
      style="opacity: 1;"><span style="font-size: 20px;" data-mce-style="font-size: 20px;"><span
        style="font-family: Mitr;" data-mce-style="font-family: Mitr;">ช้อปสุดคุ้ม ส่งเร็วทันใจ</span></span></div>
  <h2 style="color:#666666;text-align:center;  padding-bottom:20px;  word-wrap: break-word;">
    สั่งง่าย ส่งไว ส่งฟรีทุกออเดอร์ </h2>

  <div class="container">
    <div class="row">
      <div class="col-md-12">
            <h2>Lastest  <b>Products</b></h2>
            <div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="0">
            <!-- Carousel indicators -->
            <ol class="carousel-indicators">
              <li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
            </ol>
            
            <div class="row justify-content-center">
            <?php 
$i = 1; 
$counter = 1; 
while (($rs = $result->fetch_assoc()) && $counter <= 4) { ?>
    <div class="col-sm-3 thumb-wrapper" style="box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.3);">
        <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
        <div class="img-box">
            <img src="../../product/<?php echo $rs["prodShowImg"]; ?>" class="img-fluid" alt="">									
        </div>
        <div class="thumb-content">
            <h4><?php echo $rs["prodName"]; ?></h4>									
            <p class="item-price">
                <?php if ($rs["prodPrice"] != 0) { ?>
                    <strike><?php echo $rs["prodDPrice"]; ?> THB</strike> <b><?php echo $rs["prodPrice"]; ?> THB</b>
                <?php } else { ?>
                    <b><?php echo $rs["prodDPrice"]; ?> THB</b>
                <?php }?>
            </p>
            <a href="#" class="btn btn-primary">Add to Cart</a>
        </div>						
    </div>
<?php 
$counter++;
} ?>
                </div>


                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="./Rum/1.png" class="d-block" alt="...">
        </div>
        <div class="carousel-item">
          <img src="./Rum/2.png" class="d-block" alt="...">
        </div>
        <div class="carousel-item">
          <img src="./Rum/3.png" class="d-block" alt="...">
        </div>
        <div class="carousel-item">
          <img src="./Rum/4.png" class="d-block" alt="...">
        </div>
      </div>
    </div>




                <h2>All  <b>Products</b></h2>
                <div class="row justify-content-center">
                  <?php $i = 0; while($rs=$result->fetch_assoc()){ ?>

                        <div class="col-sm-3 thumb-wrapper" style="box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.3);">
                    
                      <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                      <div class="img-box">
                        <img src="../../product/<?php echo $rs["prodShowImg"]; ?>" class="img-fluid" alt="">									
                      </div>
                      <div class="thumb-content">
                        <h4><?php echo $rs["prodName"]; ?></h4>									
                        <p class="item-price"><?php if($rs["prodPrice"]!=0){
                          ?>
                          <strike><?php echo $rs["prodDPrice"]; ?> THB</strike> <b><?php echo $rs["prodPrice"]; ?> THB</b>
                          <?php
                        }else{ ?><b><?php echo $rs["prodDPrice"]; ?> THB</b><?php }?></p>
                        <a href="#" class="btn btn-primary">Add to Cart</a>
                      </div>						
                    
                          </div>
                          <?php } ?>
                </div>










            <!-- Wrapper for carousel items >
            <div class="carousel-inner">
              <div class="item carousel-item active">
                <div class="row">
                  <?php $i = 1; while($rs=$result->fetch_assoc()){ ?>

                        <div class="col-sm-3 m-2 thumb-wrapper">
                    
                      <span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                      <div class="img-box">
                        <img src="../../product/<?php echo $rs["prodShowImg"]; ?>" class="img-fluid" alt="">									
                      </div>
                      <div class="thumb-content">
                        <h4><?php echo $rs["prodName"]; ?></h4>									
                        <p class="item-price"><?php if($rs["prodPrice"]!=null){
                          ?>
                          <strike><?php echo $rs["prodDPrice"]; ?> THB</strike> <b><?php echo $rs["prodPrice"]; ?> THB</b>
                          <?php
                        }else{ ?><b><?php echo $rs["prodDPrice"]; ?> THB</b><?php }?></p>
                        <a href="#" class="btn btn-primary">Add to Cart</a>
                      </div>						
                    
                          </div>
                          <?php } ?>
                </div>
              </div>
              
            </div-->
            <!-- Carousel controls -->
            <!--a class="carousel-control-prev" href="#myCarousel1" data-slide="prev">
              <i class="fa fa-angle-left"></i>
            </a>
            <a class="carousel-control-next" href="#myCarousel1" data-slide="next">
              <i class="fa fa-angle-right"></i>
            </a-->
          </div>
          </div>
        </div>
      </div>



























    <script>
      $(document).ready(function () {
        $(".wish-icon i").click(function () {
          $(this).toggleClass("fa-heart fa-heart-o");
        });
      });
    </script>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  </body>
</html>
