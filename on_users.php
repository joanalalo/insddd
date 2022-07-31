<?php
require '../db.php';
session_start();
$session = session_id();
$tz = 'Africa/Cairo';
$time = time();
$time_check = $time-50;

$uname = $_SESSION['username'];

$selc = "select * from user_online where session = '$session';";

if(mysqli_num_rows(mysqli_query($con, $selc)) == 0){
	$ins = "insert into user_online(session,time,user) value ('$session','$time','$uname');";
	mysqli_query($con, $ins);
	
} else {
	$upd = "update user_online set time='$time' where session = '$session';";
	mysqli_query($con, $upd);
}



$deloff = "delete from user_online where time<$time_check;";
mysqli_query($con, $deloff);

$online = "select * from user_online inner join users on username = user_online.user where user != '$uname';";

$re = mysqli_query($con, $online);


if(mysqli_num_rows($re) > 0){
	while($row = mysqli_fetch_assoc($re)){
		$user_online .= '<li class="active" id="user_cont" name="'.$row['username'].'" data-id="'.$row['pic'].'">
							<div class="d-flex bd-highlight">
								<div class="img_cont">
									<img src="'.$row['pic'].'" class="rounded-circle user_img">
									<span class="online_icon"></span>
								</div>
								<div class="user_info">
									<span>'.$row['username'].'</span>
									<p>'.$row['username'].' is online</p>
								</div>
							</div>
						</li>';
	}
}

$online_data = array($user_online, mysqli_num_rows($re));

echo json_encode($online_data);

mysqli_close($con);





?>