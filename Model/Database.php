<?php
// namespace TaskManagement\Model;

class Database
{
    //properties
    
    private static $user = 'YOUR-USERNAME';
    private static $pass = 'YOUR-PASSWORD';
    private static $dsn = 'YOUR-DSN';
    
    private static $dbcon;

    private function __construct()
    {
    }

    //get pdo connection
    public static function getDb(){
        if(!isset(self::$dbcon)) {
            try {
                self::$dbcon = new \PDO(self::$dsn, self::$user, self::$pass);
                self::$dbcon->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
                self::$dbcon->setAttribute(\PDO::ATTR_DEFAULT_FETCH_MODE, \PDO::FETCH_OBJ);
            } catch (\PDOException $e) {
                $msg = $e->getMessage();
                // include '../custom-error.php';
                exit();
            }
        }

        return self::$dbcon;
    }
}
