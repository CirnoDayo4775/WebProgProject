<?php

    include 'connectDB.php';

    $pid = $_POST["pid"];
    $prodname = mysqli_real_escape_string($con,$_POST["ProductName"]);
    $prodprice = $_POST["ProductPrice"];



    echo $pid.$prodname.$prodprice;



    $sql = "update products set  prodName = '{$prodname}',
                                prodDPrice = '{$prodprice}'
                                where prodid = {$pid}";

    if($con->query($sql)){
        echo "compleated";
        header("location:showdatatable.php");
    }else{
        echo "????????";
    }