<?php
ob_start();
require_once('./classes/DBConnection.php');
$db = new DBConnection();

ob_end_flush();
include('header.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $code = isset($_POST['code']) ? $_POST['code'] : "";

    if (!empty($code)) {
        header("Location: ./form.php?form_code=" . urlencode($code));
        exit;
    } else {
        echo "<script> alert('Form code is not provided'); location.replace('./')</script>";
        exit;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enter Form Code</title>
</head>
<body>
    <h1>Enter Form Code</h1>
    <form method="post">
        <label for="code">Form Code:</label>
        <input type="text" name="code" id="code" required>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
