<?php

include "./dbcars_connection.php";

if(isset($_POST['submit']))
{
    $sql = "INSERT INTO users(full_name,user_name,user_email,active,user_password) VALUES (?,?,?,?,?)";

    $stmt = $conn->prepare($sql);

    $fullName =$_POST['full-name'];
    $userName=$_POST['user-name'];
    $email =$_POST['email'];
    $active=$_POST['active'];
    $pw =$_POST['password'];

    $stmt->execute([$fullName,$userName,$email,$active,$pw]);

    echo"User Inserted Successfully";

}
