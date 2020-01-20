<?php


    function connect($servername,$username,$password,$databasename){
            
        $connection=new mysqli($servername,$username,$password,$databasename);

        if(! $connection -> connect_error){

            return $connection;

        }

        else{

            echo "connection error".$connection -> connect_error;
            return false;
        }

    }

    function getSingleField($connection,$table,$field){

        $qry = "SELECT $field FROM $table";
        $result = $connection -> query($qry);

        if($result -> num_rows > 0){

            $data=[];
            while($row = $result->fetch_array()){
            
                array_push($data,$row[$field]);
            
            }

            
            return $data;
               
        }

        else{

            return false;
        }

    }





?>