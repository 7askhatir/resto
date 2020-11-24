<?php
                use  PHPMailer\PHPMailer\PHPMailer;

                require_once "PHPMailer/Exception.php";
                require_once "PHPMailer/PHPMailer.php";
                require_once "PHPMailer/SMTP.php";
            
                $mail = new PHPMailer();
            
            
            
                $mail->isSMTP();
                $mail->SMTPAuth = true;
                $mail->Host = 'smtp.gmail.com';
                $mail->Username = 'askhatir7@gmail.com';
                $mail->Password  = '';
                $mail->Port = '465';
                $mail->SMTPSecure = 'tls'; // tls
            
                $mail->isHTML(true);
                // $mail-setFrom('askhatir99@gmail.com','askhatir khalid');
                $mail->addAddress('askhatir99@gmail.com');
                $mail->Subject = 'Test mail';
                $mail->Body = 'THINKS YOU khalid';
            
                if($mail -> send())
                {
                    echo 'send';
                }else
                {
                    echo 'Not Send';
                }
?>