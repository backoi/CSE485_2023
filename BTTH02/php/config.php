<?php
    try {
        $conn = new PDO('mysql:host=localhost;dbname=btth2', 'root', '');
    } catch (PDOException $e) {
        print "Error!: " . $e->getMessage() . "<br/>";
        die();
    }
    $sql="SELECT * FROM btth2";
    $students=$conn->query($sql);
?>