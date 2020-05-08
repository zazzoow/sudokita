<?php

namespace App;

class Post
{
    protected $querybuilder;

    public function __construct()
    {
        $querybuilder = new QueryBuilder();

        $this->querybuilder = $querybuilder;
    }

    public function getImage()
    {
        return $this->querybuilder->getImageFromDatabase();
    }

    public function sendDT($post)
    {
      return $this->querybuilder->sendDataToDataBase($post);
    }
}
