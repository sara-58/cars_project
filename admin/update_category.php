<?php
include "./dbcars_connection.php";

$id = $_GET['id'];

$sql = "UPDATE category SET category_name=? WHERE tag_id=$id";

$stmt = $conn->prepare($sql);

$tagName = $_POST['category'];


$stmt->execute([$tagName]);

echo "Category Updated Successfully";
?>
