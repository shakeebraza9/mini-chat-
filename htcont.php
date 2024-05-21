<?php
$room=$_POST['room'];
// Connecting to the data base
include 'db_connect.php';
$sql="SELECT meg,stime,ip FROM megs WHERE room='$room'";
$res ="";
$result=mysqli_query($con,$sql);
if(mysqli_num_rows($result)>0){
    while($row =mysqli_fetch_assoc($result)){
        $res=$res.'<div class="container">';
        $res=$res.$row['ip'];
        $res=$res." says <p>".$row['meg'];
        $res=$res.'</p> <span class="time-right">'.$row["stime"]."</span></div>";
    }
}
echo $res;
?>