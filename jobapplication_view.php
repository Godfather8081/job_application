<?php

    require_once('modules.php');

    $applicantid= $_GET['appid'];

    $connection=connect("localhost","root","","job_application_db");
    

    
    $qry="
    
        SELECT * 
        FROM applicant_tb a
        JOIN job_application_tb j ON a.applicant_id=j.applicant_id
        JOIN education_tb e ON a.applicant_id=e.applicant_id
        WHERE a.applicant_id='$applicantid';      
    ";

    $result = $connection -> query($qry);


    $data=[];

    if($result -> num_rows > 0){

        while($row=$result->fetch_assoc()){

            //$row[]=array_map("utf8_encode", $row);
            //array_push($data,$row);
            //print_r($row);

            foreach ($row as $key => $value) {
                echo $key ."::". $value."<br>";
            }


        }




    }

    else{

        echo "Error".$connection->error;
    }








?>