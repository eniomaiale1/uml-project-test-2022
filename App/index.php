<?php
include_once 'config/Database.php';
include_once 'managers/StaffManager.php';
include_once 'models/StaffFull.php';

$database = new Database();
$db = $database->connect();

$staff_manager = new StaffManager($db);
$result = $staff_manager->readFullDb();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<?php

if (mysqli_num_rows($result) > 0) {
  // output data of each row
  $notEof = $row = mysqli_fetch_assoc($result);
  while($notEof) 
  {
    $depIdAux = $row["DepartmentId"];
    echo "<h1>Department: " . $row["DepartmentName"]. "</h1>";
    echo "<ul>";
    while($notEof && $depIdAux == $row["DepartmentId"])
    {
        $supIdAux = $row["SupervisorId"];
        echo "<li>Supervisor: " . $row["SupervisorLastName"]. ", " . $row["SupervisorFirstName"] . " | ". $row["SupervisorEmail"] . " | <b>" . $row["SupervisorTitle"] . "</b></li>";
        echo "<ul>";
        while($notEof && $depIdAux == $row["DepartmentId"] && $supIdAux == $row["SupervisorId"])
        {
            echo "<li>" . $row["StaffLastName"]. ", " . $row["StaffFirstName"] . " | " . $row["StaffEmail"] . " | <b>".$row["StaffTitle"]."</b></li>";
            $notEof = $row = mysqli_fetch_assoc($result);
        }
        echo "</ul>";
    }
    echo "</ul>";
    
  }
} else {
  echo "0 results";
}

mysqli_close($conn);

?>
</body>
</html>
