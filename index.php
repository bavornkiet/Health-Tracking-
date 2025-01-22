<?php
session_start();
//check if already logged in
if (isset($_SESSION['email'])){
  header('Location: view.html');
  exit();
}
?>
<form method="POST" action="php/validateUser.php">
  <label for="Email">Email:</label><br>
  <input type="text" id="email" name="email"><br>
  <label for="Password">Password:</label><br>
  <input type="password" id="password" name="password"><br>
  
  <input type="submit" value="Log in and view data">
</form> 
