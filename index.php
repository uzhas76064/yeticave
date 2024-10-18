<?php

require_once("helpers.php");
require_once("utils.php");
require_once("data.php");

echo get_date_range("2024-10-19");

$page_content = include_template("main.php", [
    "categories" => $categories,
    "goods" => $goods
]);
$layout_content = include_template("layout.php", [
    "content" => $page_content,
    "categories" => $categories,
    "title" => "Главная"
]);

print($layout_content);


