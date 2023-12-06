<?php

$host="localhost";
$username='root';
$password='';

try{
    $conn=new PDO("mysql:host=$host;dbname=cars",$username,$password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

}
catch(EXCEPTION $e){
    echo"Connection Failed".$e->getMessage();
}