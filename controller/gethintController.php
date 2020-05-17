<?php

namespace App;

require '../vendor/autoload.php';

// header("Content-Type: application/json; charset=UTF-8");
$p = json_decode($_GET["q"], true);

// var_dump($p);

$image = new Post();


$img = $image->getImages($p);

// dd($img);


//
// foreach($img as $key => $value) {
//   foreach($value as $key2 => $value2)
//        $imgs[$key] =  $value->url;
//        $imgg[$key] = $value->name;
// };
//
// dd($imgg);

echo json_encode($img);
