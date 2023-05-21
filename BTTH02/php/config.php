<?php
    try {
        $conn = new PDO('mysql:host=localhost;dbname=attandance', 'root', '');
    } catch (PDOException $e) {
        print "Error!: " . $e->getMessage() . "<br/>";
        die();
    }
    
?>