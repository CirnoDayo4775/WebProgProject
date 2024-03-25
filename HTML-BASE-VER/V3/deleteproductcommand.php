<?php

    include 'connectDB.php';

    $pid = $_GET["pid"];








    $sql = "delete productlist where prodid = '{$pid}'";

    print $sql;

    if($con->query($sql)){
        echo "compleated";
        header("location:showdatatable.php");
    }else{
        echo "????????";
    }