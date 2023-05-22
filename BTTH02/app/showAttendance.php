<?php
include 'config.php';
$sql = "SELECT tenkhoahoc FROM khoahoc";
$lophoc = $conn->query($sql);
if (isset($_POST['lophoc'])) {
  $class = $_POST['lophoc'];

  try {
    $query = "SELECT attendance.id_class, students.name AS student_name, attendance.day, attendance.status
                                  FROM attendance
                                  INNER JOIN classes ON attendance.id_class = classes.id_class
                                  INNER JOIN students ON attendance.id_sv = students.id_sv
                                  WHERE classes.classname = :class";
    $statement = $connection->prepare($query);
    $statement->bindParam(':class', $class);
    $statement->execute();
  }
  catch (PDOException $e) {
    die("Kết nối không thành công: " . $e->getMessage());
}
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
    crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
    crossorigin="anonymous"></script>
  <title>Danh sách điểm danh</title>
</head>

<body>
  <div class="container">
    <h1>Tình trạng lớp học</h1>
    <form action="" method="post">
    <div class="d-grid gap-2 d-md-flex justify-content-md-center">
      <select class="form-select text-center" id="inputGroupSelect04" name="lophoc">
        <option selected>----Chọn lớp học----</option>
        <?php
        foreach ($attendances as $attendance) {
          ?>

          <option value="1"><?= $attendance['Tenkhoahoc']?></option>;
          
          <?php
        }
        ?>

      </select>

      <div class="input-group-append">
        <button class="btn btn-outline-secondary" type="button">Duyệt</button>
      </div>

    </div>
    </form>

    <table class="table">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Họ và tên</th>
          <th scope="col">Ngày học</th>
          <th scope="col">Tình trạng</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">1</th>
          <td>ID_SinhVien</td>
          <td>Otto</td>
          <td>@mdo</td>
        </tr>
        <tr>
          <th scope="row">2</th>
          <td>Jacob</td>
          <td>Thornton</td>
          <td>@fat</td>
        </tr>
        <tr>
          <th scope="row">3</th>
          <td>Larry</td>
          <td>the Bird</td>
          <td>@twitter</td>
        </tr>
      </tbody>
    </table>

  </div>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"
    integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js"
    integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ"
    crossorigin="anonymous"></script>
</body>

</html>