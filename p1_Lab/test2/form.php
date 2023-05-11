<!DOCTYPE html>
<html>
  <head>
    <title>Thêm sinh viên mới</title>
    <style>
      form {
        display: flex;
        flex-direction: column;
        width: 100%;
        margin: 0 auto;
      }
      label {
        margin-top: 16px;
      }
      input[type="submit"] {
        margin-top: 16px;
      }
    </style>
  </head>
  <body>
    <h1>Thêm sinh viên mới</h1>
    <form method="post" action="addstudent.php">
      <label for="name">Họ và tên:</label>
      <input type="text" id="name" name="name" required>
      
      <label for="age">Tuổi:</label>
      <input type="text" id="age" name="age" required>
      
      <label for="grade">Khối:</label>
      <input type="text" id="grade" name="grade" required>
      
      <input type="submit" value="Thêm sinh viên">
    </form>
  </body>
</html>
