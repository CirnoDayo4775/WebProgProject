<?php

    include 'connectDB.php';

    $pid = $_GET["pid"];








    $sql = "delete products where ProductID = {$pid}";

    print $sql;

    /*if($con->query($sql)){
        echo "compleated";
        header("location:showdatatable.php");
    }else{
        echo "????????";
    }*/