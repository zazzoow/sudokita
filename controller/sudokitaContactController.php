<?php

namespace App;

if(isset($_POST) && !empty($_POST))
{
    $post = sanitize($_POST);

    var_dump($post);

    $send = new Post();

    $send->sendDT($post);
};

require 'views/contact.views.php';
