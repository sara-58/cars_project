<?php
include "./dbcars_connection.php";

$id=$_GET['id'];

$sql= "DELETE FROM category where tag_id=$id";

$conn->exec($sql);

echo "Category Deleted Successfully";