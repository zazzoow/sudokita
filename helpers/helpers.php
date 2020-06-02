<?php

function dd(...$args)
{
    echo'<pre>';
    die(var_dump(...$args));
    echo'</pre>';
}

function format($post)
{
  foreach($post as $key => $value) {

    $pos = trim($key,'_y');
  }

 return $pos;
}

function sanitize($post)
{
    $newpost = [];

    foreach($post as $key => $value) {

        $newpost[$key] = clean($value);
    }

    return $newpost;
}

function clean($string)
{
    $newString = htmlspecialchars($string);
    $newString = htmlentities($string);

    return $newString;
}
