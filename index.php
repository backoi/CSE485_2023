<!DOCTYPE html>
<html>
<head>
	<title>Student List</title>
</head>
<body>
	<h1>Student List</h1>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Age</th>
			<th>Gender</th>
		</tr>
		 <?php
			// Mở file danh sách sinh viên
			$filename = "file.txt";
			$file = fopen($filename, "r");

			// Đọc từng dòng của file và lưu vào mảng students
			$students = array();
			while (!feof($file)) {
				$line = fgets($file);
				$student = explode(",", $line);
				?>
			<tr>
            	<td> <?= $student[0] ?> </td>
            	<td> <?= $student[1] ?> </td>
            	<td> <?= $student[2] ?> </td>
				<td> <?= $student[3] ?> </td>
			</tr>
				<?php
			}
        ?>
		
        <?php
			
			// Đóng file
			fclose($file);
		?>
	</table>
</body>
</html>
