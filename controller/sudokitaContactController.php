<?php

namespace App;

if(isset($_POST) && !empty($_POST))
{
    $post = sanitize($_POST);

    dd($post);

    Post::sendDT($post);
};

require 'views/contact.views.php';
