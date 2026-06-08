<?php
$mysqli = new mysqli('127.0.0.1','root','','db_ta');
if ($mysqli->connect_errno) { echo "ERR:".$mysqli->connect_error; exit(1); }
$new = password_hash('admin123', PASSWORD_DEFAULT);
$stmt = $mysqli->prepare("UPDATE users SET password=? WHERE username='admin'");
$stmt->bind_param('s', $new);
if (!$stmt->execute()) { echo "ERRUPD:".$stmt->error; exit(1); }
echo "UPDATED\n";
$res = $mysqli->query("SELECT LENGTH(password) AS L, password FROM users WHERE username='admin'");
$row = $res->fetch_assoc();
echo "LEN:".$row['L']."\n";
echo $row['password']."\n";
