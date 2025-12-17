<?php
$hostname = 'localhost';
$username = 'root';
$password = '';
$database = 'hospitaldata';
$mysql = mysqli_connect($hostname,$username,$password,$database);
if(!$mysql)
    die('Connection Failed' . mysqli_connect_error());
