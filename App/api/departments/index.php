<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

include_once '../../config/Database.php';
include_once '../../managers/DepartmentManager.php';
include_once '../../models/Department.php';


$database = new Database();
$db = $database->connect();

$department_manager = new DepartmentManager($db);

if(isset($_GET['id'])){
    $result = $department_manager->readSingle($_GET['id']);
    echo json_encode($result);
}else{
    $result = $department_manager->read();
    if($result['count'] > 0){
        echo json_encode($result);
    }
    else{
        echo json_encode(array('message'=>'No departments'));
    }
}


