<?php

session_start();

$username = "";
$email = "";

$errors = array();

$db = mysqli_connect('localhost', 'root', '', 'Project') or die("could not connect to database");

$username = mysqli_real_escape_string($db, $_POST['username']);
$email = mysqli_real_escape_string($db, $_POST['email']);
$password = mysqli_real_escape_string($db, $_POST['password']);


if(empty($username)) {array_push($errors, "Username is required");}
if(empty($email)) {array_push($errors, "Email is required");}
if(empty($password)) {array_push($errors, "Password is required");}


$user_check_query = "SELECT * FROM Users WHERE UserName = '$username' OR email = '$email' LIMIT 1";

$results = mysqli_query($db, $user_check_query);
$user = myseqli_fetch_assoc($result);

if(count($errors) == 0){
    $password = md5($password);
    $query = "INSERT INTO Users(UserName, UserPassword, Email) VALUES ('$username', '$password', '$email')";


    mysqli_query($db, $query);
    $_SESSION['username'] = $username;
    $_SESSION['success'] = "You are now logged in";
    header('location: index.php');
}


