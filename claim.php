<?php
// created the post method to index.php from connect
$room=$_POST['room'];

// checking from the chrater is less 2 and grater then 20
if(strlen($room)>20 or strlen($room)<2){
    $message="Plese choose a name between 2 to 20 charactres";
    echo '<script language="javascript">';
    echo 'alert("'.$message.'");';
    echo 'window.location="http://localhost/chat/";';
    echo '</script>';
}

// checking from the chrater is not a alpha numaric numbes
else if(!ctype_alnum($room)){
    $message="Do not use alpha numaric numbes";
    echo '<script language="javascript">;';
    echo 'alert("'.$message.'");';
    echo 'window.location="http://localhost/chat/";';
    echo '</script>';
}
else{
    // connecting to the database
    include 'db_connect.php';
}

// Check if room already exists
$sql="SELECT * FROM `room` WHERE roomname ='$room'";
$result=mysqli_query($con,$sql);
if($result){
    if(mysqli_num_rows($result)>0){
        $message="Please choose different  room name this is already exits";
        echo '<script language="javascript">;';
        echo 'alert("'.$message.'");';
        echo 'window.location="http://localhost/chat/";';
        echo '</script>';
    }
    else{
        $sql="INSERT INTO `room` (`roomname`, `stime`) VALUES ('$room', current_timestamp());";
        if(mysqli_query($con,$sql)){
            $message="Your room is ready lets chat now ";
            echo '<script language="javascript">;';
            echo 'alert("'.$message.'");';
            echo 'window.location="http://localhost/chat/room.php?roomname=' . $room . '";';
            echo '</script>';
        }
    }
}
else{
    echo "Error: ".mysqli_error();
}
?>