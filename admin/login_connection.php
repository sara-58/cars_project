<?php

include "./dbcars_connection.php";

if(isset($_POST['submit']))
{
    $sql = "INSERT INTO users(full_name,user_name,user_email,password) VALUES (?,?,?,?)";

    $stmt = $conn->prepare($sql);

    $fullName =$_POST['full-name'];
    $userName=$_POST['user-name'];
    $email =$_POST['email'];

    $pw =$_POST['password'];

    $stmt->execute([$fullName,$userName,$email,$pw]);

    echo"<br>Your data inserted Successfully";

}
