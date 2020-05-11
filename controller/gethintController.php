<?php

namespace App;

require '../vendor/autoload.php';

$image = new Post();

$img = $image->getImage();

echo  json_encode($img);
