<?php

function dd(...$args)
{
    echo'<pre>';
    die(var_dump(...$args));
    echo'</pre>';
}

function redirect($route)
{
    header('Location: ' . $route);
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

function sessionExists()
{
    return (isset($_SESSION) && !empty($_SESSION));
}
