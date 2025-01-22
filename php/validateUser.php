<?php

//make sure that this person is allowed
include 'runPyScripts.php';

function fail($errMsg = 'Something went wrong'){
  echo '{"result": "error", "message": "'.$errMsg.'"}';
  exit();
}

if ($_SERVER['REQUEST_METHOD']=='POST'){
  $cfg = parse_ini_file('../cfg.ini');

  $conn = pg_connect("host=$cfg[host] port=$cfg[port] dbname=$cfg[database] user=$cfg[user] password=$cfg[password]");

  if (!$conn){
    fail("Failed to connect to db");
  }

  //pg_deallocate_prepare($conn, 'find_user_query');

  pg_prepare($conn, 'find_user_query', "SELECT email FROM users WHERE email = $1");

  $res = pg_fetch_all(pg_execute($conn, 'find_user_query', array($_POST['email'])));
  
  if (!$res){
    fail("No user was found with email ".$_POST['email']. ". Would you like to create an account?");
  }

  pg_prepare($conn, 'get_pass_query', 'SELECT password FROM users WHERE email = $1');
  $res = pg_fetch_all(pg_execute($conn, 'get_pass_query', array($_POST['email'])));

  
  if (password_verify($_POST['password'], $res[0]['password'])){
    //we good, do the processing for them
    runPy();

    //log them in
    session_start();
    $_SESSION['email'] = $_POST['email'];

    //wait for py to finish
    sleep(4);
    echo 'Yay, you are logged in. But we dont yet have a landing page lmao';
    
  } else {
    fail("Password is not correct!");
  }

} else {
  fail('Invalid request, you probably shouldnt be here');
}



