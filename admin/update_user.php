<?php
include "./dbcars_connection.php";

$id = $_GET['id'];

$sql = "UPDATE users SET full_name=?, user_name=?, user_email=?, active=?, user_password=? WHERE user_id=$id";

$stmt = $conn->prepare($sql);

$fullName = $_POST['full-name'];
$userName = $_POST['user-name'];
$email = $_POST['email'];
$active = $_POST['active'];
$pw = $_POST['password'];

$stmt->execute([$fullName, $userName, $email, $active, $pw]);

echo "User Updated Successfully";
?>







