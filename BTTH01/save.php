<?php
require_once 'Student.php';
require_once 'StudentDAO.php';

// Kiểm tra xem có dữ liệu được gửi đi từ form hay không
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  // Lấy dữ liệu từ form
  $id = $_POST['id'];
  $name = $_POST['name'];
  $age = $_POST['age'];
  $grade = $_POST['grade'];

  // Tạo đối tượng Student từ dữ liệu trong form
  $student = new Student($id, $name, $age, $grade);

  // Tạo đối tượng StudentDAO để lưu trữ danh sách sinh viên
  $studentDAO = new StudentDAO();

  // Kiểm tra trùng lặp với sinh viên có cùng ID
  if ($studentDAO->getById($this->id) === null) {
    // Thêm đối tượng Student mới vào đối tượng StudentDAO
    $studentDAO->create($student);
  
    // Lưu danh sách sinh viên vào file studentDAO.csv
    $studentDAO->saveToFile('studentDAO.csv');
  
    // Chuyển hướng về trang danh sách sinh viên
    header('Location: index.php');
    exit();
  } else {
    echo '<p style="color: red;">Student ID already exists!</p>';
  }
}
?>

<h1>Add Student</h1>
  <form method="post">
    <label>ID:</label>
    <input type="text" name="id"><br>

    <label>Name:</label>
    <input type="text" name="name"><br>

    <label>Age:</label>
    <input type="number" name="age"><br>

    <label>Grade:</label>
    <input type="number" name="grade"><br>

    <input type="submit" value="Save">
  </form>
