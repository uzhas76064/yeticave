<?php
$con = mysqli_connect("127.127.126.50", "root", "", "yeticave");
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql_lots = "SELECT l.title, l.start_price, l.image, l.category_id, l.start_date, c.name FROM lots l 
            JOIN categories c ON l.category_id = c.id
            ORDER BY l.start_date DESC";
$result_lots = mysqli_query($con, $sql_lots);
if (!$result_lots) {
    die("Error: " . mysqli_error($con));
}

$lots = mysqli_fetch_all($result_lots, MYSQLI_ASSOC);

// Запрос для получения категорий
$sql_categories = "SELECT name, encode_name FROM categories";
$result_categories = mysqli_query($con, $sql_categories);
if (!$result_categories) {
    die("Error: " . mysqli_error($con));
}

$categories = mysqli_fetch_all($result_categories, MYSQLI_ASSOC);

var_dump($categories);

