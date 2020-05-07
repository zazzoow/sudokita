<?php

namespace App;

class QueryBuilder
{

   protected $config;

    public function __construct()
    {
        $config = include'config.php';

        $this->pdo = Connection::connect($config);
    }

    public function getImageFromDatabase()
    {
        $query = 'SELECT * FROM comics WHERE id = 1';

        var_dump($this->pdo);

        return $this->pdo->query($query)->fetchAll($this->pdo::FETCH_OBJ);
    }

    public function registerToDatabase($name,$email,$password)
    {
        $query = "INSERT INTO user(name,email,password) VALUES(:'$name',:'$email',:'$password')";

        return $this->pdo->query($query)->execute();
    }

    public function checkIdentityOfUser($table,$email)
    {
         $query = "SELECT  '$table'  FROM '$table' WHERE email = '$email'";

         return $this->pdo->query($query)->fetch($this->pdo::FETCH_OBJ);
    }
}
