<?php 
include dirname(__DIR__)."/../mainSystem/connectDB.php";

  $prodid = $_GET["pid"];

  $sqler = "select * from productlist where prodid = '".$prodid."'";

$result = $con->query($sqler)->fetch_assoc();;
 ?>
<?php
  $error_message="";
  $UserFirstName="";
    if(isset($_GET['error'])){
      $error = $_GET['error'];
      
      if ($error == 1 ){
        $error_message = "Please check UserFirstName";
      }
    }else{
      if (isset($_COOKIE['UserFirstName'])){
          $UserFirstName = $_COOKIE['UserFirstName'];
      }
      
    }
    
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Test?</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <style>
      @font-face {
        font-family: "printable4uregular";
        src: url("../font/PrintAble4URegularver100.ttf") format("truetype");
        font-weight: normal;
        font-style: normal;
      }
      /* Tuangwit template */
      body {
        position: fixed;

        justify-content: center;
        align-items: center;
        padding-left: 0px;
        margin-left: 0px;
        height: 100vh;
        width: 100vw;

        overflow-x: hidden;
        font-family: "printable4uregular";
        background-color: rgb(187, 187, 187);
      }
      /* Custom CSS */
    </style>
  </head>

  <body>
    <div class="container-fluid">
      <br /><br /><br /><br />

      <div class="container-fluid p-3" style="border: 2px black solid">

<h1>Product ID : <?php echo $result["prodid"]; ?> | <?php echo $result["prodName"]; ?></h1>
        <div class="row">
          <div class="col-3">
            <img
              src="../../product/<?php echo $DataUser["prodShowImg"]; ?>"
              width="100%"
              alt=""
            />
          </div>
          <div class="col">
          <form method="post" action="updateproductcommand.php">
        <div class="mb-3">
          <label for="ProductName">Product Name</label>
          <input type="text" class="form-control" id="ProductName" name="ProductName" aria-describedby="userHelp" value="<?php echo $result["prodName"]; ?>">

          <label for="ProductPrice">Product Price</label>
          <input type="text" class="form-control" id="ProductPrice" name="ProductPrice" aria-describedby="userHelp" value="<?php echo $result["prodDPrice"]; ?>">
          <input type="hidden" id="pid" name="pid" value="<?php echo $prodid ?>">
        </div>

        
        <button type="submit" class="btn btn-primary">Submit</button>
        <button type="reset" class="btn btn-danger">Cancel</button>
      </form>
      <br>
      <button class="btn btn-info" onclick="window.location.href='showdatatable.php'">Back</button>
          </div>
        </div>
      </div>
    </div>

    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
      integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
      integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
