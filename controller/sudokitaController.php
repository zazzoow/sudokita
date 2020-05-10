<?php

namespace App;

$image = new Post();

$img = $image->getImage();

$ObjImg  = json_encode($img);

var_dump($ObjImg);

echo $ObjImg;

include 'views/index.views.php';
