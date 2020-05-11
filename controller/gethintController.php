<?php

namespace App;

require '../vendor/autoload.php';

$image = new Post();

$img = $image->getImage();

$ObjImg  = json_encode($img);

// var_dump($ObjImg);

echo  $ObjImg;
