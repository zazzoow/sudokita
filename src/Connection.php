<?php

namespace App;

class Connection 
{
    public static function connect($config)
    {
       
       
        try {
            $pdo = new \PDO(
                $config['host'].';dbname='.$config['dbname'],
                $config['username'],
                $config['password'],
                $config['options']
            );
            
            return $pdo;
            
        } catch (\PDOException $e) {
            echo $e->getMessage();
        }
    }
}
 
