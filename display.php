<?php
$servername ="localhost";
$username="root";
$password="";
$dbname="student";

$conn = mysqli_connect($servername,$username,$password,$dbname);

$sql = "SELECT * FROM roll_no";
$result = mysqli_query($conn, $sql);

// Associative array
$row = mysqli_fetch_assoc($result);


mysqli_close($conn);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=\, initial-scale=1.0">
    <title>Student Data</title>
    <style>table {
  border-collapse: collapse;
  width: 100%;
}
th{
    background-color:lightgreen;
    text-align: center;
}
th, td {
  padding: 8px;
  
  border-bottom: 1px solid #DDD;
}
tr:hover {background-color: #D6EEEE;}
</style>
</head>
<body>
    <table border="solid black 1px">
        <tr>
            <th>FirstName</th>
            <th>LasttName</th>
            <th>En.NO</th>
            <th>Gender</th>
            <th>ExamRecord</th>

        </tr>
        <?php while($row = mysqli_fetch_assoc($result))
        {
        ?>
        
        <tr>
            <td><?php echo $row['FirstName'] ?></td>
            <td> <?php echo $row['LastName'] ?></td>
            <td> <?php echo $row['EnNo'] ?></td>
            <td> <?php echo $row['Gender'] ?></td>
            <td> <?php echo $row['ExamRecord'] ?></td>
        </tr>
        <?php 
        }
        ?>
    </table>
    
</body>
</html>

