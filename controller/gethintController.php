<?php

namespace App;

require '../vendor/autoload.php';

$p = json_decode($_GET["q"], true);


$image = new Post();


$img = $image->getImages($p);

echo json_encode($img);
