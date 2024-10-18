<?php
function format_num ($num): string
{
    $num = ceil($num);
    $num = number_format($num, 0, '', ' ');

    return $num ." " ."₽";
}

function get_date_range($end_date): string
{
    $future_date = new DateTime($end_date);
    $current_date = new DateTime();

    $interval = $future_date->diff($current_date);

    $hours = $interval->days * 24 + $interval->h;
    $minutes = $interval->i;

    return "{$hours}:{$minutes}";
}