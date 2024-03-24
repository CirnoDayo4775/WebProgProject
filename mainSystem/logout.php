<?php 
session_start();
unset($_SESSION['username']);
session_destroy();
header("location:../HTML-BASE-VER/V3/HomeV2.html");

?>