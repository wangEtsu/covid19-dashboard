<?php 
$connection = new mysqli("localhost", "root", "", "covid_cases");
    if($connection->connect_error){
        die("Connection Failed!".$connection->connect_error);
    }
    // echo("Success");

    $del = $connection->query("DELETE FROM victoria");

    // Read CSV Data 
    $csvData = file_get_contents("https://docs.google.com/spreadsheets/d/e/2PACX-1vQ9oKYNQhJ6v85dQ9qsybfMfc-eaJ9oKVDZKx-VGUr6szNoTbvsLTzpEaJ3oW_LZTklZbz70hDBUt-d/pub?gid=0&single=true&output=csv");
    $csvDelimiter = ';';
    $csvLines = str_getcsv($csvData, "\n");
    for ($i = 1; $i < count($csvLines); $i++) {
        // echo $csvLines[$i];
        $row_lga = explode(",", $csvLines[$i])[0];
        $row_population = explode(",", $csvLines[$i])[2];
        $row_cases = explode(",", $csvLines[$i])[4];
        echo $row_lga;
        echo "</br>";
        
        // Insert into database
        $sql = $connection->query("INSERT INTO victoria (lga,population,cases) VALUES('$row_lga', '$row_population', '$row_cases')");

        if($sql){
            echo "Success!";
        }
        else{
            echo "Fail";
        }
    }
?>