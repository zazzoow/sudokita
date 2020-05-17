<?php

namespace App;

$post = format(sanitize($_POST));

$img = New Post();

$image = $img->getImage($post);

require 'views/comics.views.php';
