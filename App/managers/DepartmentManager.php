<?php

class DepartmentManager
{
    private $conn;

    public function __construct($db){

       $this->conn = $db;
    }

    public function read(){
        $sql = "SELECT d.id,
                        d.department,
                        d.sort
                    FROM phpdemo_mysql_db.departments AS d
                    ORDER BY d.sort";

        $result = mysqli_query($this->conn, $sql);

        $num = mysqli_num_rows($result);
        $department_arr = array();
        $department_arr['data'] = array();
        $department_arr['count'] = $num;
        while($row = mysqli_fetch_assoc($result)){
            extract($row);
            $department_item = new Department();
            $department_item->id = $id;
            $department_item->department = $department;
            $department_item->sort = $sort;
    
            array_push($department_arr['data'],$department_item);
        }

        return $department_arr;
    }

    public function readSingle($_id){
        $sql = "SELECT d.id,
                    d.department,
                    d.sort
                FROM phpdemo_mysql_db.departments AS d
                WHERE d.id = ?
                ORDER BY d.sort";

        $stmt = $this->conn->prepare($sql); 
        $stmt->bind_param("i", $_id);
        $stmt->execute();
        $result = $stmt->get_result(); // get the mysqli result
        $department = $result->fetch_assoc(); // fetch the data
        extract($department);
        $department_item = new Department();
        $department_item->id = $id;
        $department_item->department = $department;
        $department_item->sort = $sort;
        return $department_item;
    }
}
