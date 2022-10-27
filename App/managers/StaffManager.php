<?php

class StaffManager
{
    private $conn;

    public function __construct($db){

       $this->conn = $db;
    }

    public function readStaffBySupervisor($_supervisor_id){
        $sql = "SELECT 
            s.id, 
            s.first_name, 
            s.last_name, 
            s.email,
            s.title,
            s.sort,
            s.department_id,
            s.supervisor_id
        FROM phpdemo_mysql_db.staff as s
        WHERE s.supervisor_id = ?
        ORDER BY s.sort";

        $stmt = $this->conn->prepare($sql); 
        $stmt->bind_param("i", $_supervisor_id);
        $stmt->execute();
        $result = $stmt->get_result();

        $num = mysqli_num_rows($result);
        $staff_arr = array();
        while($row = mysqli_fetch_assoc($result)){
            extract($row);
            $staff_item = new Staff();
            $staff_item->id = $id;
            $staff_item->first_name = $first_name;
            $staff_item->last_name = $last_name;
            $staff_item->email = $email;
            $staff_item->title = $title;
            $staff_item->sort = $sort;
            $staff_item->supervisor_id = $supervisor_id;
            $staff_item->department_id = $department_id;
            //$staff_item->team = $this->readNested($supervisor_id);
    
            array_push($staff_arr,$staff_item);
        }

        return $staff_arr;
    }

    public function readByDepartment($_department_id){
        $sql = "SELECT 
            s.id, 
            s.first_name, 
            s.last_name, 
            s.email,
            s.title,
            s.sort,
            s.department_id,
            s.supervisor_id
        FROM phpdemo_mysql_db.staff as s
        WHERE s.department_id = ?
        ORDER BY s.sort";

        $stmt = $this->conn->prepare($sql); 
        $stmt->bind_param("i", $_department_id);
        $stmt->execute();
        $result = $stmt->get_result();

        $num = mysqli_num_rows($result);
        $staff_arr = array();
        $staff_arr['data'] = array();
        $staff_arr['count'] = $num;
        while($row = mysqli_fetch_assoc($result)){
            extract($row);
            $staff_item = new Staff();
            $staff_item->id = $id;
            $staff_item->first_name = $first_name;
            $staff_item->last_name = $last_name;
            $staff_item->email = $email;
            $staff_item->title = $title;
            $staff_item->sort = $sort;
            $staff_item->supervisor_id = $supervisor_id;
            $staff_item->department_id = $department_id;
    
            array_push($staff_arr['data'],$staff_item);
        }

        return $staff_arr;
    }

    public function readSingle(){
        return null;
    }

    public function readFullDb(){
        $sql = "select Departments.id AS DepartmentId, 
            Departments.department AS DepartmentName, 
            Supervisor.id AS SupervisorId, 
            Supervisor.first_name AS SupervisorFirstName, 
            Supervisor.last_name AS SupervisorLastName, 
            Supervisor.email AS SupervisorEmail,
            Supervisor.title AS SupervisorTitle,
            Staff.id AS StaffId, 
            Staff.first_name AS StaffFirstName, 
            Staff.last_name AS StaffLastName, 
            Staff.email AS StaffEmail,
            Staff.title AS StaffTitle
        from phpdemo_mysql_db.staff as Staff 
        inner join phpdemo_mysql_db.staff as Supervisor
            ON Staff.supervisor_id = Supervisor.id
        inner join phpdemo_mysql_db.departments as Departments
            ON Staff.department_id = Departments.id
        ORDER BY Departments.sort, Staff.sort";

        $result = mysqli_query($this->conn, $sql);
        return $result;
    }

    public function readFull(){
        $result = $this->readFullDb();
        $num = mysqli_num_rows($result);
        $staff_arr = array();
        $staff_arr['data'] = array();
        $staff_arr['count'] = $num;
        while($row = mysqli_fetch_assoc($result)){
            extract($row);
            $staff_item = new StaffFull();
            $staff_item->department_id = $DepartmentId;
            $staff_item->department_name = $DepartmentName;
            $staff_item->supervisor_id = $SupervisorId;
            $staff_item->supervisor_first_name = $SupervisorFirstName;
            $staff_item->supervisor_last_name = $SupervisorLastName;
            $staff_item->supervisor_email = $SupervisorEmail;
            $staff_item->supervisor_title = $SupervisorTitle;
            $staff_item->staff_id = $StaffId;
            $staff_item->staff_first_name = $StaffFirstName;
            $staff_item->staff_last_name = $StaffLastName;
            $staff_item->staff_email = $StaffEmail;
            $staff_item->staff_title = $StaffTitle;
    
            array_push($staff_arr['data'],$staff_item);
        }

        return $staff_arr;
    }
}
