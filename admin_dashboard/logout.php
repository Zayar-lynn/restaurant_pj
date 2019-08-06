<?php session_start() ?>
<?php 
   $_SESSION['u_email']=null;
   $_SESSION['u_pass']=null;
   $_SESSION['role']=null;

   header('Location:../../Restaurant_pj/index.php');

 ?>