<?php

class Db{

    private static $connection;

    private static $settings = array(
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
        PDO::ATTR_EMULATE_PREPARES => false,
    );

    public static function connect($host, $user, $password, $database)
    {
        if (!isset(self::$connection))
        {
            self::$connection = @new PDO(
                    "mysql:host=$host;dbname=$database",
                    $user,
                    $password,
                    self::$settings
            );
        }
    }

    public static function queryOne($query, $params = array())
    {
        $result = self::$connection->prepare($query);
        $result->execute($params);
        return $result->fetch();
    }

    public static function queryAll($query, $params = array())
    {
        $result = self::$connection->prepare($query);
        $result->execute($params);
        return $result->fetchAll();
    
    }

    public static function querySingle($query, $params = array())
    {
        $result = self::queryOne($query, $params);
        if (!$result)
                return false;
        return $result[0];
    
    }
    
    // Executes a query and returns the number of affected rows
    public static function query($query, $params = array())
    {
        $result = self::$connection->prepare($query);
        $result->execute($params);
        return $result->rowCount();
    }

    // Function to get recently inserted item id from the database
    public static function recent_id()
    {
        return self::$connection->lastInsertId();
    }
}

?>