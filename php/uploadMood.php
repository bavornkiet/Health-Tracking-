<?php
session_start();
var_dump($_SESSION);
if (isset($_SESSION['email']) && isset($_POST['value'])){

    $cfg = parse_ini_file('../cfg.ini');
    $conn = pg_connect("host=$cfg[host] port=$cfg[port] dbname=$cfg[database] user=$cfg[user] password=$cfg[password]");

    pg_prepare($conn, 'upload-mood', 'INSERT INTO uploads ("metadata_emailAddress", "metadata_timestamp", "mood", "metadata_period_hours")
    VALUES ($1, $2, $3, $4);');
    $res = pg_execute($conn, 'upload-mood', array($_SESSION['email'], time(), $_POST['value'], 1)); // with proper email
    

    if ($res){echo 1;}else{echo 0;}
    exit();

} else {
    header('Location: ../mood.html');
    exit();
}

//we shouldn't be here
echo 0;




?>