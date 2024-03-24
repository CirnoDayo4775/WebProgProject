<?php 
session_start();
if(empty($_SESSION['username'])) {
  header("Location: loginpage.php");
  exit;
}


include 'mainSystem/connectDB.php';
$username = $_SESSION['username'];

$sql = "select * from userdata where username = '".$username . "'"; 
$DataUser = $con->query($sql)->fetch_assoc(); ?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Your Profile</title>
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
        background-color: #b5b5b5;
        justify-content: center;
        align-items: center;
        padding-left: 0px;
        margin-left: 0px;
        height: 100vh;
        width: 100vw;

        overflow-x: hidden;
        font-family: Arial, sans-serif;
        background-color: rgb(187, 187, 187);
      }
      /* Custom CSS */
    </style>
  </head>

  <body>
    <div class="container-fluid">
      <br /><br /><br /><br />

      <div class="container-fluid p-3" style="border: 2px black solid">
        <div class="row">
          <div class="col-3">
            <img src="/img/<?php echo $DataUser["imgName"]; ?>" width="100%"
            alt="" />
          </div>
          <div class="col">
            <h1>
              Welcome!
              <?php echo $DataUser["userFirstName"].' '.$DataUser["UserLastName"] ?>
            </h1>
            <p>
              <?php echo $DataUser["userFirstName"].' '.$DataUser["UserLastName"] ?>
            </p>
            <p><?php echo $DataUser["UserAddress"] ?></p>
            <button
              class="btn btn-primary"
              onclick="window.location.href='edituser.php'"
            >
              Edit Info
            </button>

            <button class="btn btn-danger" onclick="window.location.href='logout.php'">Log out</button>
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
