<?php

include "./dbcars_connection.php";

if(isset($_POST['submit']))
{
    $sql = "INSERT INTO category(category_name) VALUES (?)";

    $stmt = $conn->prepare($sql);

    $categoryName =$_POST['category'];


    $stmt->execute([$categoryName]);

    echo "Category Inserted Successfully";

}
