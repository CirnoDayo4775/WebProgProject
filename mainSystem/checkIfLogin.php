<?php
session_start();
if(empty($_SESSION['username'])) {
  header("Location: ../form_login.php");
  exit;
}
?>