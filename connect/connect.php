<?php
class DB{

   private static  $db_host = "localhost";
   private static  $db_name = "resto";
   private static $db_user = "root";
   private static  $db_pass = "";
   private static  $connection = null; 
  public static   function connect(){
    try{
          self::$connection = new PDO("mysql:host=". self::$db_host . ";dbname=" . self::$db_name, self::$db_user, self::$db_pass);
    }catch(PDOException $e){
         die($e->getMessage);   
    }
        return  self::$connection;
    }
    
  public static  function disconnect(){
        
        
         self::$connection = null;
        
    }  
}

?>