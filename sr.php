<?php
require '../db.php';
$user = $_POST['user'];
$msg = $_POST['msg'];
$touser = $_POST['touser'];

if($msg){
	$qu = "insert into chat (uname,msg,touser) value ('$user','$msg','$touser')";
	mysqli_query($con, $qu);
}

if($touser === 'pub'){
	$qus = "select * from (select * from chat where touser = 'pub' order by id desc limit 30) sub order by id asc;";
} else {
	$qus = "select * from (select * from chat where uname = '$user' and touser = '$touser' or uname = '$touser' and touser = '$user' order by id desc limit 30) sub order by id asc;";
}


$res = mysqli_query($con, $qus);


if(mysqli_num_rows($res) > 0){
	$msgbox = '';
	while($row = mysqli_fetch_assoc($res)){
		$uname = $row['uname'];
		$selpic = "select pic from users where username = '$uname'";
		$re = mysqli_query($con, $selpic);
		$ro = mysqli_fetch_assoc($re);
		$pic = $ro['pic'];
		
		if($row['uname'] == $user){
			$msgbox .= '<div class="d-flex justify-content-start mb-4">
								<div class="img_cont_msg">
									<img src="'.$pic.'" class="rounded-circle user_img_msg">
								</div>
								<div class="msg_cotainer">
									'.$row['msg'].'
									<span class="msg_time">'.substr($row['pubat'], 10, 9).'</span>
								</div>
							</div>';
		} else {
			$msgbox .= '<div class="d-flex justify-content-end mb-4">
								<div class="msg_cotainer_send">
									'.$row['msg'].'
									<span class="msg_time_send">'.substr($row['pubat'], 10, 9).'</span>
								</div>
								<div class="img_cont_msg">
							<img src="'.$pic.'" class="rounded-circle user_img_msg">
								</div>
							</div>';
		}
		
	}
}

echo $msgbox;

?>