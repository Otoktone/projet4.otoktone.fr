<?php

namespace OCFram;

class PDOFactory
{
    public function getMysqlConnexion()
    {
        $db = new \PDO('mysql:host=localhost;dbname=news', 'root', '');
        $db->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);

        return $db;
    }
}


