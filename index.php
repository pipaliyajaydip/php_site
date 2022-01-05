<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Student Exam Form</title>
</head>
<body>
<h1>Student Exam Form</h1>
<div>
<form action="student_data.php" method="POST">
<label for="fname">First name:</label>
  <input type="text" id="fname" name="fname" placeholder="Enter first your name"><br><br>
  <label for="lname">Last name:</label>
  <input type="text" id="lname" name="lname" placeholder="Enter last your name"><br><br>
  <label for="En no">En. NO:</label>
  <input type="number" id="enno" name="enno" placeholder="Enter your En no"><br><br>
  <label for="gen">Gender: </label>
  <label for="gen">Male</label>
  <input type="radio" id="gen" name="gender" value="male">
  <label for="gen">Female</label>
  <input type="radio" id="gen" name="gender" value="Female">
  <label for="gen">Other</label>
  <input type="radio" id="gen" name="gender" value="Other"><br><br>
  <label for="Previous_rec_exm">Previous Exam Percentage: </label>
  <input type="int" name="exmrec" ><br><br>
  <input type="submit" value="Submit" class="btn">
</form>
</div>  
</body>
</html>