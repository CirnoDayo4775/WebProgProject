<?php

include dirname(__DIR__)."/../mainSystem/connectDB.php";

$sqler = "select * from productlist";

$result = $con->query($sqler);

//print_r($result)

$count_row = mysqli_num_rows($result);

//echo $count_row;

if($count_row==0){
echo "We are currently broke af right now.";
}else{
echo "( o wo)_b <br>";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Test?</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <style>
    @font-face {
        font-family: "printable4uregular";
        src: url("../font/PrintAble4URegularver100.ttf") format("truetype");
        font-weight: normal;
        font-style: normal;
    }

    /* Tuangwit template */
    body {


        justify-content: center;
        align-items: center;
        padding-left: 0px;
        margin-left: 0px;
        height: 100vh;
        width: 100vw;

        overflow-x: hidden;
        overflow-y: scroll;
        font-family: "printable4uregular";
        background-color: rgb(187, 187, 187);
    }

    /* Custom CSS */
    </style>
</head>

<body>
    <div class="container">

        <div class="row">
            <?php
            $i = 1;
while($rs=$result->fetch_assoc()){
?>
            <div class="col-4 p-2 mb-2">
            <div class="p-2" style="border:2px solid black;">
                <img src="/img/<?php echo $rs["picProduct"]; ?>" width="100%" alt="" /><br><br>
                <div class="d-flex justify-content-between">

                    <p><?php echo $rs["ProductName"] ?></p>


                    <p><?php echo $rs["ProductPrice"] ?></p>

                </div>
                <label for="">
                    <div class="d-flex justify-content-between">
                        <button class="btn btn-primary" onclick="window.location.href='updateproduct.php?pid=<?php echo $rs["ProductID"] ?>'">
                            Update!
                        </button>
                        <button class="btn btn-primary" id="buttonof<?php echo $rs["ProductID"]?>" onclick="confirm('<?php echo $rs["ProductID"]?>')">
                            Delete!
                        </button>
                    </div>
            </div>
                
            </div>
            </label>
            <?php } ?>
        </div>
    </div>


<script>

function confirm(prodID) {
    idofbutton = "buttonof"+prodID;
    document.getElementById(idofbutton).innerHTML = "Confirm";
    document.getElementById(idofbutton).onclick = function() {window.location.href='deleteproductcommand.php?pid='+prodID;};
    document.getElementById(idofbutton).style.background = 'red';

}

//window.location.href='deleteproductcommand.php?pid=
</script>




























    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
    </script>
</body>

</html>


<?php
}
$con->close();
?>