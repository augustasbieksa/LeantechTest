<?php
if(isset($_POST['contactFrmSubmit']) && !empty($_POST['name']) && !empty($_POST['email']) && (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL) === false) && !empty($_POST['message'])){
    

    
    // Submitted form data
    $name   = $_POST['name'];
    $tel   = $_POST['tel'];
    $email  = $_POST['email'];
    $message= $_POST['message'];
$link = mysqli_connect("localhost", "root", "", "leantech");

    // Check connection
        if($link === false){
            die("ERROR: Could not connect. " . mysqli_connect_error());
        }
    // Attempt insert query execution
        $sql = "insert into inquiries (name,tel,email,message) values ('$name','$tel','$email','$message')";
        if(mysqli_query($link, $sql)){
            $status = 'ok';
        } else{
            $status = 'err';
        }
        echo $status;die;
    // Close connection
        mysqli_close($link);
    }
    ?>