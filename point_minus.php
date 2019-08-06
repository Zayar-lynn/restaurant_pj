<?php 
  $con=new mysqli('localhost','root','','restaurant');
  $minus_point=$_POST['minus_point'];
  $sql= "UPDATE add_restaurant set point=point-0.5 WHERE r_id='$minus_point'";
  if($con->query($sql)===TRUE)
	  {
	  	echo"Thank for Your Feedback";
	  }

?>