<?php

namespace App;

$post = format(sanitize($_POST));

$image = new Post();

// dd($post);

if(empty($img = $image->getComics($post))) {
  include "views/error404.php";
  die();
}

// dd($img);

include "views/categories.views.php";
