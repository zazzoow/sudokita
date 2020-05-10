<?php

namespace App;

$image = new Post();

$img = $image->getComics();

var_dump($img);

include "views/categories.views.php";
