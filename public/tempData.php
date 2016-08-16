<?php

if(isset($_POST['id'])){
    session_start();
    $_SESSION['test'] = $_POST['id'];
   // echo $_SESSION['test'];
}

?>