<table class="table table-striped">
<?php

  if(isset($_GET['fname'])){
    $cnt = $_GET['fname'];
    $result = getAllPatientDetail($cnt);

	$row = $result->fetch_array();
  
    $link = "<tr><th>";
    $mid = "</th><td>";
    $endingTag = "</td></tr>";
    echo "<tr>";   // appointment_no, full_name, dob, weight, phone_no, address, blood_group, medical_condition

    echo "$link Appointment No $mid". $row['fname'] . "$endingTag";
    echo "$link Full Name $mid" . $row['fullName'] . "$endingTag";
    echo "$link RegNo(in years) $mid" . $row['address'] . "$endingTag";

    echo "$link Weight $mid" . $row['city'] . "$endingTag";

    echo "$link Phone No $mid" . $row['	gender'] . "$endingTag";

    echo "$link Address $mid" . $row['email'] . "$endingTag";

    


    echo "$link Payment $mid" . "<form action='studentdetails.php' method='post'>








    
          <select required value=1 class ='form-control' name='payment' style='width: 500;'>
                <option value='admin' class='option'>200</option>
                <option value='clerks' class='option'>500</option>
                <option value='doctors' class='option'>900</option>
          </select>
<input type='number' style='visibility: hidden; width; 1px;' name=\"appointment_no\" value =" . $appointment_no . ">

    <input type='submit' class='btn btn-primary' action='payment.php'></form>" . "$endingTag";


    echo "</tr>";
  
  }
?>
</table>

