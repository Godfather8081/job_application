<!DOCTYPE html>

<html> 

<?php

require_once('modules.php');

$connection=connect("localhost","root","","job_application_db");
?>




<head>
    <title>FORMS</title>
</head>

<body>

    <form  method="POST" action="index_handler.php">
    
        <table border="2" align="center">

        <h3 align="center">Basisc Details</h3>

            <tr>
                <td>First Name :</td> 
                <td><input type="text" name="first_name"></td>                
            </tr>

            <tr>
                <td>Last Name :</td> 
                <td><input type="text" name="last_name"></td>                
            </tr>

            <tr>
                <td>Designation :</td> 
                <td><input type="text" name="designation"></td>                
            </tr>

            <tr>
                <td>Email :</td> 
                <td><input type="text" name="email"></td>                
            </tr>

            <tr>
                <td>Phone No :</td> 
                <td><input type="text" name="phoneno"></td>                
            </tr>

            <tr>
                <td>City :</td> 
                <td><input type="text" name="city"></td>                
            </tr>


            <tr>     
                <td> State : </td>
                <td>
                    
                <select name="states">

                <?php
                    $stats=getSingleField($connection,"state_tb","state_name");
                    foreach ($stats as $data) {
                    
                        echo "<option value=".$data." selected>".$data."</option>";
                    }
                ?> 

                </select>


                       
                    
                </td>                
            </tr>


            
            <tr>    
                <td>Address :</td> 
                <td>
                    <textarea name="address" cols="30" rows="10">
                    </textarea>
                </td>                
            </tr>

            <tr>     
                <td>
                    <input type="radio" name="gender" value="male" checked>Male <br>
                    <input type="radio" name="gender" value="female">Female <br>
                </td>                
            </tr>

            <tr>     
                <td> Relationship Status : </td>
                <td>
                    <select name="relation">
                        <option value="single" selected>single</option>
                        <option value="marrid">marrid</option>
                        <option value="engaged">engaged</option>
                    </select>
                </td>                
            </tr>

            <tr>
                <td>DOB :</td> 
                <td><input type="text" name="dob"></td>                
            </tr>


            <tr>
                <td>Languages Known :</td> 
                <td>

                    <?php
                    $languages=getSingleField($connection,"language_tb","language_name");
                
                    foreach ($languages as $data) {
                        
                        echo "<input type=checkbox name=".$data." value=".$data.">".$data."";
                        echo "<input type=checkbox name=".$data."read"." value=".$data."read".">Read";
                        echo "<input type=checkbox name=".$data."Write"." value=".$data."write".">Write";
                        echo "<input type=checkbox name=".$data."Speak"." value=".$data."Speak".">Speak <br>"; 
                    }
                    ?> 
                </td>                
            </tr>






                 <tr>
                <td>Languages Known :</td> 
                <td>

                <?php
                    $technology=getSingleField($connection,"technology_tb","technology_name");
                
                    foreach ($technology as $data) {
                        
                        echo "<input type=checkbox name=".$data." value=".$data.">".$data."";
                        echo "<input type=radio name=".$data."status"." value=".$data."begnier".">Begnier";
                        echo "<input type=radio name=".$data."status"." value=".$data."begnier".">Mediator";
                        echo "<input type=radio name=".$data."status"." value=".$data."expert".">Expert <br>";
                    }
                    ?> 
                </td>                
            </tr>

            <tr>
                <td>Notice Period :</td> 
                <td><input type="text" name="notice_period"></td>                
            </tr>

            <tr>
                <td>Expected CTC :</td> 
                <td><input type="text" name="expectedctc"></td>                
            </tr>

            <tr>
                <td>Current CTC :</td> 
                <td><input type="text" name="currentctc"></td>                
            </tr>


            <tr>     
                <td> Department : </td>
                <td>
                    <select name="department">
                        <option value="development" selected>Development</option>
                        <option value="design">Design</option>
                        <option value="marketing">Marketing</option>
                    </select>

                </td>                
            </tr>

        </table>






        <!-- ---------------------------------------------------- -->



        <table border="2" align="center">

        <h3 align="center">Education Details</h3>


             <tr>
                <td><h5>SSC Result : </h5></td>
                 
                <td>
                    Name Of Board :  <input type="text" name="ssc[]">
                    Passing Year :  <input type="text" name="ssc[]">
                    Percentage :  <input type="text" name="ssc[]">
                </td>                
            </tr>

            <tr>
                <td><h5>HSC/Diploma Result : </h5></td>
                 
                <td>
                    Name Of Board :  <input type="text" name="hsc[]">
                    Passing Year :  <input type="text" name="hsc[]">
                    Percentage :  <input type="text" name="hsc[]">
                </td>                
            </tr>

            <tr>
                <td><h5>Bechalore Result : </h5></td>
                 
                <td>
                    Course Name :  <input type="text" name="bechalore[]">
                    Univercity :  <input type="text" name="bechalore[]">
                    Passing Year :  <input type="text" name="bechalore[]">
                    Percentage :  <input type="text" name="bechalore[]">
                </td>                
            </tr>

            <tr>
                <td><h5>Master Result : </h5></td>
                 
                <td>
                    Course Name :  <input type="text" name="master[]">
                    Univercity :  <input type="text" name="master[]">
                    Passing Year :  <input type="text" name="master[]">
                    Percentage :  <input type="text" name="master[]">
                </td>                
            </tr>

        </table>

        <!-- ---------------------------------------------- -->



        <table border="2" align="center">

        <h3 align="center">Work Exprience</h3>


        <tr>
                
                 
                <td>
                    Company Name :  <input type="text" name="work[]">
                    Designation :  <input type="text" name="work[]">
                    From :  <input type="text" name="work[]">
                    To :  <input type="text" name="work[]">
                </td>                
        </tr>


        <tr>
                
                 
                <td>
                    Company Name :  <input type="text" name="work[]">
                    Designation :  <input type="text" name="work[]">
                    From :  <input type="text" name="work[]">
                    To :  <input type="text" name="work[]">
                </td>                
        </tr>


        <tr>
                
                 
                <td>
                    Company Name :  <input type="text" name="work[]">
                    Designation :  <input type="text" name="work[]">
                    From :  <input type="text" name="work[]">
                    To :  <input type="text" name="work[]">
                </td>                
        </tr>



        </table>



        <!-- ------------------------------------------- -->


        <table border="2" align="center">


        <h3 align="center">Preferenc Details</h3>


        <tr>     
                <td> Prefer Location : </td>
                <td>
                    
                <select name="preferloc" size="3" multiple>

                <?php
                    $preferloc=getSingleField($connection,"preferloc_tb","prefer_name");
                    foreach ($preferloc as $data) {
                    
                        echo "<option value=".$data." selected>".$data."</option>";
                    }
                ?> 

                </select>


                

                       
                    
                </td>                
            </tr>

        <tr>
                
                 
                <td>
                    Name :  <input type="text" name="ref[]">
                    Contact No :  <input type="text" name="ref[]">
                    Relation :  <input type="text" name="ref[]">
                </td>                
        </tr>


        <tr>
                
                 
                <td>
                    Name :  <input type="text" name="ref[]">
                    Contact No :  <input type="text" name="ref[]">
                    Relation :  <input type="text" name="ref[]">
                </td>                
        </tr>

        </table>


        <!-- -------------------------------------------- -->


        <center>

        <br>
        <br>
        <br>
        <input type="submit" name="submit" value="Submit">
        <input type="reset" name="reset" value="Reset">

        </center>

    </form>
    
    



</body>
</html>