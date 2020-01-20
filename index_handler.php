<?php

    require_once('modules.php');



    //data gather-------------------------

    $post_data=[];
    

    foreach ($_POST as $key => $value) {
        
        //echo $key ."::".$value . "<br>";
        if( is_array($value)  ){
        $value=implode(", ",$value); 
        }

        $post_data[$key]=$value;
        
        

    }

    //print_r($post_data);



    $connection=connect("localhost","root","","job_application_db");



    //insert to applicannt------------------------------------

    $qry="
    
        INSERT INTO applicant_tb
        (applicant_firstname,applicant_lastname,applicant_address,applicant_email,applicant_city,applicant_phoneno,applicant_state,applicant_gen,applicant_relationship,applicant_dob,applicant_workexp)
        VALUES(
            
            '$post_data[first_name]',
            '$post_data[last_name]',
            '$post_data[address]',
            '$post_data[email]',
            '$post_data[city]',
            '$post_data[phoneno]',
            '$post_data[states]',
            '$post_data[gender]',
            '$post_data[relation]',
            '$post_data[dob]',
            '$post_data[work]'      
        );      
        ";

    //echo $qry;
   

    if($connection -> query($qry) == true){

        $applicant_id=$connection->insert_id;

        $qry="
    
            INSERT INTO  education_tb
            (applicant_id,ssc,hsc,bachlor,master)
            VALUES(
                
                '$applicant_id',
                '$post_data[ssc]',
                '$post_data[hsc]',
                '$post_data[bechalore]',
                '$post_data[master]'    
            );    
        ";

        $connection->query($qry);

    }

    else{
        echo "fail".$connection -> error;
    }


    

    //insert to job_application----------------------------------------------


    $qry="
    
    INSERT INTO job_application_tb
    (applicant_id,app_designation,app_refrences,app_prafrence,app_ectc,app_cctc,app_department)
    VALUES(
        
        '$applicant_id',
        '$post_data[designation]',
        '$post_data[ref]',
        '$post_data[preferloc]',
        '$post_data[expectedctc]',
        '$post_data[currentctc]',
        '$post_data[department]'
    );    
    ";

    if($connection -> query($qry) == true){

        echo "Your job application is submited click  <a href='jobapplication_view.php?appid=$applicant_id'>hear</a> to view details.";

    }

    else{
        echo "fail".$connection -> error;
    }





?>