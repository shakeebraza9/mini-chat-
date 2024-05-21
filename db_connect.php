<?php
$servername="localhost";
$username="root";
$password="";
$database="chatroom";

// crating database connection
$con=mysqli_connect($servername,$username,$password,$database);

// check connection
if(!$con){
    die("Failed to connection".mysqli_connect_error());
}

?>