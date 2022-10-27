<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

include_once '../../../config/Database.php';
include_once '../../../managers/StaffManager.php';
include_once '../../../models/StaffFull.php';

$database = new Database();
$db = $database->connect();

$staff_manager = new StaffManager($db);
$result = $staff_manager->readFull();
if($result['count'] > 0){
    echo json_encode($result);
}
else{
    echo json_encode(array('message'=>'No staff'));
}