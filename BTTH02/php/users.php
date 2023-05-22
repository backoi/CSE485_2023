<?php
$conn = mysqli_connect('localhost', 'root', '', 'btth02');
if ($conn->connect_error) {
    die("Kết nối thất bại: " . $conn->connect_error);
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Hiển thị dữ liệu người dùng</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        table th,
        table td {
            padding: 8px;
            text-align: left;
            border: 1px solid black;
        }

        table th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h2>Danh sách người dùng</h2>
    <table>
        <tr>
            <th>User ID</th>
            <th>Password</th>
            <th>Role ID</th>
            <th>Email</th>
        </tr>
        <?php
        $sql = "SELECT * FROM users";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row["UserID"] . "</td>";
                echo "<td>" . $row["Password"] . "</td>";
                echo "<td>" . $row["RoleID"] . "</td>";
                echo "<td>" . $row["Email"] . "</td>";
                echo "</tr>";
            }
        } else {
            echo "<tr><td colspan='4'>Không có dữ liệu</td></tr>";
        }
        ?>
    </table>
</body>
</html>
