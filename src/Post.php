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

    public function getComics($post)
    {
        return $this->querybuilder->getComicsFromDatabase($post);
    }

    public function sendDT($post)
    {
      return $this->querybuilder->sendDataToDataBase($post);
    }

    public function getImages($post)
    {
      return $this->querybuilder->getImagesFromDatabase($post);
    }

    public function getImage($post)
    {
      return $this->querybuilder->getImageFromDatabase($post);
    }

    public function getDescribe($post)
    {
      return $this->querybuilder->getDescriptionFromDatabase($post);
    }
}
