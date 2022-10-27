<?php
class Database{
    private $servername = "phpdemo_mysql_container";
    private $serverport = "3306";
    private $username = "phpdemo_mysql_user";
    private $password = "phpdemo_mysql_pass";
    private $dbname = "phpdemo_mysql_db";
    private $conn;

    public function connect(){
        $this->conn = null;
        $this->conn = mysqli_connect($this->servername, $this->username, $this->password, $this->dbname, $this->serverport);
        if (!$this->conn) {
            die("Connection failed: " . mysqli_connect_error());
        }
        return $this->conn;
    }
}
?>