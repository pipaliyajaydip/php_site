<?php
include'authcheck.php';
session_start();

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "student";

$conn = mysqli_connect($servername,$username,$password,$dbname);

$email = $_POST["email"];
$password = $_POST["password"];

$sql = "INSERT INTO login (email,password) VALUES ('$email','$password')";
$result = mysqli_query($conn, $sql);

// $row=mysqli_fetch_array($result,MYSQLI_ASSOC);
// $count = mysqli_num_rows($result);  

// if($count==1){
//     echo "<h1>Login Successful</h1>";
// }
// else{
//     echo"<h1>Please check your Username & Password</h1>";
// }

?>
