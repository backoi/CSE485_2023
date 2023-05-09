<?php
require_once 'Student.php';
require_once 'StudentDAO.php';

// Tạo đối tượng StudentDAO để lưu trữ danh sách sinh viên
$studentDAO = new StudentDAO();

// Mở file studentDAO.csv để đọc dữ liệu
$handle = fopen('studentDAO.csv', 'r');

// Đọc các dòng dữ liệu từ file và lưu vào đối tượng StudentDAO
while (($data = fgetcsv($handle)) !== false) {
  // Tạo đối tượng Student từ dữ liệu trong file
  $id = $data[0];
  $name = $data[1];
  $age = $data[2];
  $grade = $data[3];
  $student = new Student($id, $name, $age, $grade);

  // Thêm đối tượng Student vào đối tượng StudentDAO
  $studentDAO->create($student);
}

// Đóng file sau khi đọc xong
fclose($handle);

// Hiển thị danh sách sinh viên lên trang web
$students = $studentDAO->getAll();
foreach ($students as $student) {
  echo 'ID: ' . $student->getId() . '<br>';
  echo 'Name: ' . $student->getName() . '<br>';
  echo 'Age: ' . $student->getAge() . '<br>';
  echo 'Grade: ' . $student->getGrade() . '<br>';
  echo '<br>';
}
?>