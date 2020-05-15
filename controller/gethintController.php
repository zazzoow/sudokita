<?php

namespace App;

require '../vendor/autoload.php';

// dd($_POST);

$image = new Post();

$img = $image->getImage();
//
// foreach($img as $key => $value) {
//        $imgs[$key] = '<img src = ' . $value . ' > ';
// };
// dd($_POST);
echo json_encode($img);
