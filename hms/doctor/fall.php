<!DOCTYPE html>

  <head>
  
   
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  </head>
  
  <body >
    <div class="jumbotron" style="background: url('images/head.jpeg') no-repeat;background-size: cover; height: 300px;"></div>
   
<div class="container-fluid"> 
  <div class="row">
<div class="col-md-3">
  <div class="list-group">
    <a href="" class="list-group-item active" style="background-color: #3498DB;
          color: #ffffff;border-color:#3498DB ">Patient</a>
     <a href="" class="list-group-item">Patient Details</a>
     <a href="" class="list-group-item">Payment/checkout</a>
</div>
<hr>
  <div class="list-group">
    <a href="" class="list-group-item active" style="background-color: #3498DB;
         color: #ffffff;border-color:#3498DB ">Staff</a>
     <a href="" class="list-group-item">Staff Details</a>
     <a href="" class="list-group-item">Add New Staff</a>
     <a href="" class="list-group-item">Remove Staff Member</a>
     </div>
</div>
<div class="col-md-8">
  <div class="card">
    <div class="card-body" style="background-color: #3498DB;color: #ffffff;">
      Book Appointment
    </div>

     <div class="card-body">
       
<form class="form-group" action="func.php" method="post">
  
<label>First Name :</label>
<input type="text" name="fname" class="form-control"><br>
<label>Last Name :</label>
<input type="text" name="lname" class="form-control"><br>
<label>Email id :</label>
<input type="text" name="email" class="form-control"><br>
<label>Contact :</label>
<input type="text" name="contact" class="form-control"><br>
<label>Doctor Appointment :</label>
<select class="form-control">
  <option value="Dr Meshack From 6pm to 8pm">Dr Meshack From 6pm to 8pm</option>
  <option value="Dr Chelaa From 4pm to 6pm">Dr Chelaa From 4pm to 6pm</option>
</select><br>
<input type="submit"class="btn btn-primary" name="pat_submit" value="Enter Appointment">

</form>
     </div>
  
</div>
<div class="col-md-1"></div>
</div>
</div>




     <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  </body>
</html>