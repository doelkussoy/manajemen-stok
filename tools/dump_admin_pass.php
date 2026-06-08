<?php
$mysqli = new mysqli('127.0.0.1','root','','db_ta');
if ($mysqli->connect_errno) { echo "ERR:".$mysqli->connect_error; exit(1); }
$res = $mysqli->query("SELECT password FROM users WHERE username='admin'");
if (!$res) { echo "ERRQL:".$mysqli->error; exit(1); }
$row = $res->fetch_assoc();
echo $row['password']."\n";
// Debug: show length and hex
$s = $row['password'];
echo "LEN:" . strlen($s) . "\n";
echo "HEX:" . bin2hex($s) . "\n";
