<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

include_once '../../config/Database.php';
include_once '../../managers/StaffManager.php';
include_once '../../models/Staff.php';

function findNested($supervisor_id, $staff_manager_aux){
    $arr_staff = $staff_manager_aux->readStaffBySupervisor($supervisor_id);
    foreach($arr_staff as $staff){
        $staff->team = array();
        $staff->team = findNested($staff->id, $staff_manager_aux);
    }
    return $arr_staff;
}

$database = new Database();
$db = $database->connect();

$staff_manager = new StaffManager($db);


$_department_id = isset($_GET['departmentId']) ? $_GET['departmentId'] : null;

if($_department_id != null){
    $result = $staff_manager->readByDepartment($_department_id);
    if($result['count'] > 0){
        echo json_encode($result);
    }
    else{
        echo json_encode(array('message'=>'No staff'));
    }
}else{
    //$result = $staff_manager->readNested(0);
    $result = findNested(0, $staff_manager);
    echo json_encode($result);
}




