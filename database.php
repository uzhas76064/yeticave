<?php
$con = mysqli_connect("127.127.126.50", "root", "", "yeticave");
$sql = "select l.title, l.start_price, l.image, l.category_id, l.start_date, c.name from lots l
        join categories c on l.category_id = c.id";
$result = mysqli_query($con, $sql);

if (!$result) {
    print ("Error: " . mysqli_connect_error());
}

$goods = mysqli_fetch_all($result, MYSQLI_ASSOC);

var_dump($goods);