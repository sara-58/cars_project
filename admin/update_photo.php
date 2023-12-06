<?php
include "./dbcars_connection.php";

$id = $_GET['id'];


$sql = "SELECT * FROM images WHERE img_id='$id' ";

if(isset($_POST['submit']))
{

$sql = "UPDATE images SET img_date=?, img_title=?, img_license=?, img_dimension=?, img_format=?, active=?,img_small=?, img_large=?, img_category=? WHERE img_id=$id";

$stmt = $conn->prepare($sql);


$imgDate =$_POST['date'];
$imgTitle=$_POST['title'];
$imgLicense =$_POST['license'];
$imgDimension =$_POST['dimension'];
$imgFormat =$_POST['format'];
$is_active=$_POST['active'];

$img_dir = $_FILES['imgSmall'];
$file_p ="images/".$img_dir['name'];
move_uploaded_file($img_dir["tmp_name"],$file_p);
$photo1 =$img_dir['name'];

$img_dir2 = $_FILES['imgLarge'];
$file_p ="images/".$img_dir2['name'];
move_uploaded_file($img_dir2["tmp_name"],$file_p);
$photo2 =$img_dir2['name'];

$imgCategory =$_POST['category'];

$stmt->execute([$imgDate,$imgTitle,$imgLicense,$imgDimension,$imgFormat,$is_active,$photo1,$photo2,$imgCategory]);

echo"Your data Updated Successfully";

}

