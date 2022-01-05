<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Student Data</title>
</head>
<body>
    <h1>Student Data</h1>
    <table border="solid black 2px">
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>En. NO</th>
            <th>Gender</th>
            <th>Exam Record</th>
        </tr>
        <tr>
            <td><?php echo $_POST["fname"]; ?></td>
            <td><?php echo $_POST["lname"]; ?></td>
            <td><?php echo $_POST["enno"]; ?></td>
            <td><?php echo $_POST["gender"];?></td>
            <td><?php echo $_POST["exmrec"]; ?></td>
        </tr>
        
    </table>
</body>
</html>