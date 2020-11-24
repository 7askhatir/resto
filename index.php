<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>
    <nav>

        <a href=""><img src="img/chef.png" alt=""></a>
        <form action="popap.php" method="POST">
             <input type="submit" name="dec" value="deco">
        </form>
       
    </nav>
    <?php
       include 'popap.php';
       ?>
    <header>
        <div class="espave"></div>    
        <h1>Reserver une plat rundum</h1>
        <div class="espave"></div> 
        <form action="" method="GET">  
        <input type="submit" value="Click ici"  class="btn" name="btn1">
        </form>
        <div class="espave"></div>    
        <div class="plats">
        <?php
        $db=DB::connect();
        $table=array();
        $sql="SELECT * FROM `plat` ORDER BY RAND() LIMIT 6";
        foreach($db->query($sql) as $row){
         array_push($table,$row['idplat']);
         echo(' <div class="plat" style="color:black;" id="id'.$row['idplat'].'">
         '.$row['nomePlat'].'
     </div>');
        }
        ?>
        </div>
        <?php
          if(isset($_GET['btn1'])){
            $rand=array_rand($table,1);
            $sql="SELECT * from `plat` WHERE `plat`.`idplat`={$table[$rand]} ";
            $data=$db->query($sql)->fetch();
            var_dump($data);
            echo('<div class="popap">
            <div class="shadow"></div>
             <div class="content">
                 <h1>Votte choix rundum</h1><br><br>
                 <div class="plat" style="color:black;width:90%";height:90%;>
                 '.$data['nomePlat'].'
             </div>
             <form action="" method="POST">  
             <input type="submit" value="ok"  class="btn" name="btn2">
             </form>
             </div>');
             if(isset($_POST['btn2'])){
                 $id=$data['idplat'];
                 $email=$_SESSION['user'];
                 $date=date("d-m-y");
                 $sql="INSERT INTO `command` (`idcommand`, `dateCommand`, `plat_idplat`, `email`) VALUES (NULL, ?, ?, ?);";
                 $stmt= $db->prepare($sql);
                 $stmt->execute([$date, $id, $email ]);
                 unset($_SESSION['user']);
 
                                  
            

             }
             
          }
        ?>
        <div class="popap" style="display:<?php echo($display) ?>;">
            <div class="shadow"></div>
             <div class="content">
                 <h1>connect</h1><br><br>
                 <form action="popap.php" method="POST">
                    <label for="fname">nome</label>
                    <input type="text" id="fname" name="fname" placeholder="votre nome..">
                
                    <label for="lname">prenome</label>
                    <input type="text" id="lname" name="lname" placeholder="votre prenom..">
                
                    <label for="country">N° Tele</label>
                    <input type="text" id="lname" name="tele" placeholder="votre N° tele">
                    <label for="country">Email</label>
                    <input type="text" id="lname" name="email" placeholder="votre N° tele">

                  
                    <input type="submit" value="Submit" name="save">
                  </form>
             </div>
            
        </div>
    </header>
    <div class="espave"></div>    

    <footer>
            <span style="position: relative; top: 15px;">© Copyright 2020 Resturant | Powered by <a href="" style="color: beige;">Askhatir khalid</a></span>
    </footer>
</body>
</html>
