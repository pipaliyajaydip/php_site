<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Student Data</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th {
            background-color: lightgreen;
            text-align: center;
        }

        th,
        td {
            padding: 8px;

            border-bottom: 1px solid #DDD;
        }

        tr:hover {
            background-color: #D6EEEE;
        }
    </style>
</head>

<body>
    <?php
    session_start();
    $_SESSION['expire'] = $_SESSION['start'] + 30;

    if (isset($_SESSION['username'])) {
        echo "Welcome" . $_SESSION['username'];
        echo "<br>";
        echo "your class div is:" . $_SESSION['stdid'];
        echo "<br>";
    } elseif ($_SESSION['expire'] > $_SESSION['start']) {
        echo "please login again" . $_SESSION['username'] . "to be continue";
    } else {
        echo "please login again student";
    }


    //server connection
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "student";

    $conn = mysqli_connect($servername, $username, $password, $dbname);

    //check connection between site and database
    if (!$conn) {
        die("Connection failed" . mysqli_connect_error());
    } else {
        echo "Connected Successfull";
    }

    //form inputdata add to main dabase table
    $fname = $_POST["fname"];
    $lname = $_POST["lname"];
    $enno = $_POST["enno"];
    $gen = $_POST["gender"];
    $exmrec = $_POST["exmrec"];
    $conno = $_POST["contactno"];

    //for sql query run on server
    $sql = "INSERT INTO roll_no (FirstName,LastName,EnNO,Gender,ExamRecord,ContactNo) VALUES ('$fname','$lname','$enno','$gen','$exmrec','$conno')";
    $result = mysqli_query($conn, $sql);
    if (!$result) {
        echo 'failes';
    }

    ?>
    <h1>Student Data</h1>
    <div class="container">
        <table border=" solid black 2px ">
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>En.NO</th>
                <th>Gender</th>
                <th>Exam Record</th>
                <th>Contact No</th>
            </tr>
            <tr>
                <td><?php echo $_POST["fname"]; ?></td>
                <td><?php echo $_POST["lname"]; ?></td>
                <td><?php echo $_POST["enno"]; ?></td>
                <td><?php echo $_POST["gender"]; ?></td>
                <td><?php echo $_POST["exmrec"]; ?></td>
                <td><?php echo $_POST["contactno"] ?></td>
            </tr>
        </table>
    </div>
    <hr>
    <center><a href="index.php"><button> MY Data is <strong>Correct</strong></button></a></center>
    <!-- <a href="student_data.php"><button>Show all students data</button></a></center> -->

    <?php

    $cook = $_COOKIE['Student'];
    echo $cook;
    echo "<br>";


    echo $_COOKIE['Student'];
    ?>

</body>

</html>
