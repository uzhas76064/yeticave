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

function is_less_than_hour($end_date): bool
{
    $future_date = new DateTime($end_date);
    $current_date = new DateTime();

    $interval = $future_date->diff($current_date);

    $hours = $interval->days * 24 + $interval->h;

    // Проверка, осталось ли меньше одного часа
    return $hours == 0 && $interval->i > 0;
}