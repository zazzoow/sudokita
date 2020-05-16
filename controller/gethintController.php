<?php

namespace App;

require '../vendor/autoload.php';

// header("Content-Type: application/json; charset=UTF-8");
$p = json_decode($_GET["q"], true);

// var_dump($p);

$image = new Post();

$img = $image->getImage($p);
//
// foreach($img as $key => $value) {
//        $imgs[$key] = '<img src = ' . $value . ' > ';
// };
// dd($_POST);
echo json_encode($img);
