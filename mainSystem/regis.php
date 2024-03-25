<?php
    session_start();
    //1. Connect Database
    include 'connectDB.php';

    //2.Read data from Form
    //echo 'Hello CheckLogin!';
    $username = $_POST['username'];
    $password = $_POST['password'];
    $Conpassword = $_POST['Conpassword'];
    $FirstName = $_POST['FirstName'];
    $LastName = $_POST['LastName'];

    
if($password != $Conpassword){
    header("location:../HTML-BASE-VER/V3/sign_up.html?$username$password");
}
    //echo '<br>username: ' .$username;
    //echo '<br>password: '. $password;

    /*
    SELECT * 
    FROM users
    where UserEmail = 'somchai' and UserPassword='123'
    */


    //3.Write SQL Statement
    $sql = "select * from userdata where username = '".$username . "'"; 

    //4. Send sql to MySQl, get result back
    $result = $con->query($sql);

    //5. Count result
    $count_row = mysqli_num_rows($result);

    //6.Work with data
    if($count_row !=0){
        
header("location:../HTML-BASE-VER/V3/sign_up.html?$username$password");
    }else{
        //echo "Please check username and password";
        while($rs = $result->fetch_assoc()){
            // echo "<br>User ID: " .  $rs["UserID"];
            // echo "<br>Username: ". $rs["UserEmail"];
            //header("location:../profile.php?username=".$username);
            $_SESSION['username'] = $username;



            $sql ="INSERT INTO `userdata` (`username`, `password`, `userFirstName`, `UserLastName`) VALUES
            ('$username', '$password', '$FirstName', '$LastName')
            ";

$result = $con->query($sql);













            
                header("location:../HTML-BASE-VER/V3/HomeV2.php");
            
            
        }
    }

    $con->close();

?>