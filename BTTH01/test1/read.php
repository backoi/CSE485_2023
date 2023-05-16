<?php
// mở file CSV
$file = fopen("students.csv", "r");

// tạo một mảng các sinh viên
$students = array();

// đọc dữ liệu từ file và lưu vào mảng sinh viên
while (($data = fgetcsv($file)) !== FALSE) {
  // tạo một đối tượng sinh viên từ dữ liệu được đọc
  $student = array(
    "id" => $data[0],
    "name" => $data[1],
    "age" => $data[2],
    "grade" => $data[3]
  );

  // thêm đối tượng sinh viên vào mảng
  array_push($students, $student);
}

// đóng file CSV
fclose($file);
?>
<!DOCTYPE html>
<html>
  <head>
    <title>Danh sách sinh viên</title>
    <style>
      table {

        width: 100%;
      }
      th, td {
        text-align: left;
        padding: 8px;
      }
      th {
        background-color: #FF7F50;
        color: white;
      }
      body{
        font-famly: Arial, sans-serif;
    }
    </style>
  </head>
  <body>
    
    <h1>Danh sách sinh viên</h1>
    <table>
      <?php foreach ($students as $student) { ?>
        <tr>
          <td><?php echo $student["id"]; ?></td>
          <td><?php echo $student["name"]; ?></td>
          <td><?php echo $student["age"]; ?></td>
          <td><?php echo $student["grade"]; ?></td>
        </tr>
      <?php } ?>
    </table>
  </body>
</html>
