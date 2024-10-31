<?php

require_once("helpers.php");
require_once("utils.php");
require_once("database.php");

$page_content = include_template("main.php", [
    "categories" => $categories,
    "lots" => $lots
]);
$layout_content = include_template("layout.php", [
    "content" => $page_content,
    "categories" => $categories,
    "title" => "Главная"
]);

print($layout_content);


