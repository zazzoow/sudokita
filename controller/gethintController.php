<?php

namespace App;

require '../vendor/autoload.php';

$image = new Post();

$img = $image->getImage();
//
// foreach($img as $key => $value) {
//        $imgs[$key] = '<img src = ' . $value . ' > ';
// };
// dd($imgs);
echo json_encode($img);
