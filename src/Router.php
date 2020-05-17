<?php

namespace App;

class Router
{

    public function redirectToUrl()
    {
        $route = clean(str_replace("/","",parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH)));

        // var_dump($route);

        if(!file_exists('controller/' .$route . 'Controller.php')) {
                 http_response_code(404);
                 include 'views/error404.php';
                 die();
        }
        else {
             include 'controller/' .$route . 'Controller.php';
        }
    }
}
