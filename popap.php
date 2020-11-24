<?php
 if(session_id() == '' || !isset($_SESSION)) {
    session_start(); 
    
 }
 include 'connect/connect.php';

 $db=DB::connect();
 if(isset($_POST['save'])){
     $name=$_POST['fname'];
     $email=$_POST['email'];
     $lname=$_POST['lname'];
     $ntele=$_POST['tele'];
     $email=$_POST['email'];
     $_SESSION['user']=$email;
     $sql="INSERT INTO `user` (`iduser`, `nome`, `prenome`,`num`,`email`) VALUES (NULL, ?, ?, ? ,?);";
     $stmt= $db->prepare($sql);
     $stmt->execute([$name, $lname, $ntele , $email]);  

 }
if(isset($_POST['dec'])){
   if(isset($_SESSION['user'])){
       unset($_SESSION['user']);

      }
}
if(isset($_SESSION['user'])){
    $display="none";
  }
 else{
    $display="block";
 }
 ?>
