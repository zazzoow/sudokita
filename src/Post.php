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

    public function getComics()
    {
        return $this->querybuilder->getComicsFromDatabase();
    }

    public function sendDT($post)
    {
      return $this->querybuilder->sendDataToDataBase($post);
    }
    public function getImage($post)
    {
      return $this->querybuilder->getImageFromDatabase($post);
    }
}
