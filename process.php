<?php
    $connection = new mysqli("localhost", "root", "", "covid_cases");
    if($connection->connect_error){
        die("Connection Failed!".$connection->connect_error);
    }
    // echo("Success");
    $result = array("error"=>false);
    $action = '';

    if(isset($_GET['action'])){
        $action = $_GET['action'];
    }

    if($action == 'read'){
        $sql = $connection->query("SELECT * FROM victoria");
        $records = array();
        while($row = $sql->fetch_assoc()){
            array_push($records, $row);
        }
        $result["records"] = $records;
    }

    if($action == 'create'){
        $lga = $_POST['lga'];
        $population = $_POST['population'];
        $cases = $_POST['cases'];

        $sql = $connection->query("INSERT INTO victoria (lga,population,cases) VALUES('$lga', '$population', '$cases')");

        if($sql){
            $result["message"] = "Record Added Successfully!";
        }
        else{
            $result['error'] = true;
            $result['message'] = "Failed to add record!";
        }
    }

    if($action == 'update'){

        $id = $_POST['id'];
        $lga = $_POST['lga'];
        $population = $_POST['population'];
        $cases = $_POST['cases'];

        $sql = $connection->query("UPDATE victoria set lga='$lga',population='$population',cases='$cases' WHERE id='$id'");

        if($sql){
            $result["message"] = "Record Updated Successfully!";
        }
        else{
            $result['error'] = true;
            $result['message'] = "Failed to update record!";
        }
    }

    $connection->close();
    echo json_encode($result)

?>