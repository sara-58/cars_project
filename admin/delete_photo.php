<?php
include "./dbcars_connection.php";

$id=$_GET['id'];

$sql= "DELETE FROM images where img_id=$id";

$conn->exec($sql);

echo "Photo Deleted Successfully";