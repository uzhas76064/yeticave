<?php
function format_num ($num): string
{
    $num = ceil($num);
    $num = number_format($num, 0, '', ' ');

    return $num ." " ."₽";
}