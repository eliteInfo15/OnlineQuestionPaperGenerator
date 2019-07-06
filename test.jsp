

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
       <meta charset="utf-8">
       <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
       <meta http-equiv="x-ua-compatible" content="ie=edge">
        <!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.3/css/mdb.min.css" rel="stylesheet">

<link  rel="stylesheet" type="text/css" href="compiled.css">
<style type="text/css">
   
    #card-header{
         /*background-color: #49ceb5 ;*/
        font-size: 18px;
        height:62px;
    }
    #container{
        height:58px;       
     }
    
     #addInstructor{
         height: 62px;
     }
     #navbar{
         width: 100%;
     }
    
</style>
        </head>
    <body>
         
<div class="container">
    <div class="row">
<nav class="mb-1 navbar navbar-expand-lg navbar-dark white lighten-1 example z-depth-5" id="navbar">
  
   <a class="navbar-brand text-default " href="#"> <i class="fas fa-book-reader prefix text-default fa-lg"></i><b>Instructor Management</b></a>
  
  
      <button type="button" class="btn btn-default btn-rounded white-text ml-auto"><i class="fas fa-sign-out-alt"></i>Logout</button>
    
  </div>
</nav>
    </div>
    <div class="row">
<div class="container" id="maincontainer"> 
    <div class="row">
        <div class="col-lg-3">
           
            <div id="list-example" class="list-group" style="border-width: 1px;">
     
     					 <a class="list-group-item list-group-item-action default-color" href="#list-item-1"style="border-width: 0px;"><i class="fas fa-home"></i>   Home</a>
      					<a class="list-group-item list-group-item-action " href="#list-item-2"style="border-width: 0px;"><i class="fas fa-chalkboard-teacher"></i>   Manage Instructor</a>
     					 <a class="list-group-item list-group-item-action " href="#list-item-3"style="border-width: 0px;"><i class="fas fa-file-alt"></i> Manage Questions</a>
     					 <a class="list-group-item list-group-item-action " href="#list-item-4"style="border-width: 0px;"><i class="fas fa-clipboard-list"></i>Manage Courses</a>
     					 <a class="list-group-item list-group-item-action " href="#list-item-2"style="border-width: 0px;"><i class="fas fa-book"></i>Manage Subjects</a>
      					<a class="list-group-item list-group-item-action " href="#list-item-4"style="border-width: 0px;">Manage Units</a>
     					 <a class="list-group-item list-group-item-action " href="#list-item-3"style="border-width: 0px;">Question Paper</a>
    				</div>
        </div>
           <div class="col-lg-9">   
                <div class="container" id="container"></div>      

  <ul class="nav nav-tabs nav-justified md-tabs 4b3e8a" id="myTabJust" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="home-tab-just" data-toggle="tab" href="#home-just" role="tab" aria-controls="home-just"
      aria-selected="true">View Instructors</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="profile-tab-just" data-toggle="tab" href="#profile-just" role="tab" aria-controls="profile-just"
      aria-selected="false">Add Instructors</a>
  </li>
  
</ul>
<div class="tab-content card pt-5" id="myTabContentJust">
  <div class="tab-pane fade show active" id="home-just" role="tabpanel" aria-labelledby="home-tab-just">
    <!-- Editable table -->
<div class="card">
  <h3 class="card-header text-center font-weight-bold white-text default-color text-uppercase py-4" id='card-header'>View Instructor's Details</h3>
  <div class="card-body">
    <div id="table" class="table-editable">
      
      <table class="table table-bordered table-responsive-md table-striped text-center">
        <thead>
          <tr>
            <th class="text-center">Instructor Id</th>
            <th class="text-center">Name</th>
            <th class="text-center">Email</th>
            <th class="text-center">Mobile Number</th>
            <th class="text-center">Update & Remove</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="pt-3-half" contenteditable="true">103</td>
            <td class="pt-3-half" contenteditable="true">ramesh</td>
            <td class="pt-3-half" contenteditable="true">ramesh@gmail.com</td>
            <td class="pt-3-half" contenteditable="true">453672876</td>
             
            
            <td>
                <!-- Basic dropdown -->
<button class="btn btn-default dropdown-toggle mr-4" type="button" data-toggle="dropdown"
  aria-haspopup="true" aria-expanded="false">Choose Operation</button>

<div class="dropdown-menu">
  <a class="dropdown-item" href="#"><button type="button" class="btn btn-success btn-rounded">View</button></a>
  <a class="dropdown-item" href="#"><button type="button" class="btn btn-indigo btn-rounded">Update</button></a>
  <a class="dropdown-item" href="#"><button type="button" class="btn btn-danger btn-rounded">Remove</button></a>
  
</div>
<!-- Basic dropdown -->
            </td>
          </tr>
          <!-- This is our clonable table line -->
         
          <!-- This is our clonable table line -->
         
          <!-- This is our clonable table line -->
          
        </tbody>
      </table>
    </div>
  </div>
</div>
<!-- Editable table -->


  </div>
  <div class="tab-pane fade" id="profile-just" role="tabpanel" aria-labelledby="profile-tab-just">
    <!-- Material form subscription -->
<div class="card">

    <h5 class="card-header default-color white-text text-center py-4" id="addInstructor">
        <strong>Add Details of Instructor</strong>
    </h5>

    <!--Card content-->
    <div class="card-body px-lg-5">

        <!-- Form -->
        <form class="text-center" style="color: white">

           <div class="row">

            <div class="col-lg-4">
            <div class="md-form mt-3">
                <div class="row">
                <div class="col-lg-2"><i class="fas fa-user-edit prefix grey-text"></i></div>
                <div class="col-lg-9"><input type="text" id="materialSubscriptionFormPasswords" class="form-control">
                    <label for="materialSubscriptionFormPasswords">Instructor Id</label></div>
                </div>
            </div>
            </div>
            <div class="col-lg-4">
            <div class="md-form">
                <div class="row">
                    <div class="col-lg-2"><i class="fas fa-user prefix grey-text"></i></div>
                <div class="col-lg-9"><input type="email" id="materialSubscriptionFormEmail" class="form-control">
                    <label for="materialSubscriptionFormEmail">First Name</label></div>
                </div>
            </div>
           </div> 
           <div class="col-lg-4">
            <div class="md-form">
                <div class="row">
                    <div class="col-lg-2"><i class="fas fa-edit prefix grey-text"></i></div>
                <div class="col-lg-9"><input type="email" id="materialSubscriptionFormEmail" class="form-control">
                    <label for="materialSubscriptionFormEmail">Last Name</label></div>
                </div>
            </div>
           </div>     
           </div>
         <div class="row">

            <div class="col-lg-6">
            <div class="md-form mt-3">
                <div class="row">
                <div class="col-lg-2"><i class="fas fa-key prefix grey-text"></i></div>
                <div class="col-lg-9"><input type="text" id="materialSubscriptionFormPasswords" class="form-control">
                    <label for="materialSubscriptionFormPasswords">Password</label></div>
                </div>
            </div>
            </div>
            <div class="col-lg-6">
            <div class="md-form">
                <div class="row">
                    <div class="col-lg-2"><i class="fas fa-key prefix grey-text"></i></div>
                <div class="col-lg-9"><input type="email" id="materialSubscriptionFormEmail" class="form-control">
                    <label for="materialSubscriptionFormEmail">Confirm Password</label></div>
                </div>
            </div>
           </div> 
        </div>
             <div class="row">

            <div class="col-lg-6">
            <div class="md-form mt-3">
                <div class="row">
                <div class="col-lg-2"><i class="fas fa-calendar-alt prefix grey-text"></i></div>
                <div class="col-lg-9"><input type="text" id="materialSubscriptionFormPasswords" class="form-control">
                    <label for="materialSubscriptionFormPasswords">Date Of Birth</label></div>
                </div>
            </div>
            </div>
            <div class="col-lg-6">
            <div class="md-form">
                <div class="row">
                    <div class="col-lg-2"><i class="fas fa-envelope prefix grey-text"></i></div>
                <div class="col-lg-9"><input type="email" id="materialSubscriptionFormEmail" class="form-control">
                    <label for="materialSubscriptionFormEmail">Email</label></div>
                </div>
            </div>
           </div> 
        </div>
             <div class="row">

            <div class="col-lg-6">
            <div class="md-form mt-3">
                <div class="row">
                <div class="col-lg-2"><i class="fas fa-mobile-alt prefix grey-text"></i></div>
                <div class="col-lg-9"><input type="text" id="materialSubscriptionFormPasswords" class="form-control">
                    <label for="materialSubscriptionFormPasswords">Mobile Number</label></div>
                </div>
            </div>
            </div>
            <div class="col-lg-6">
            <div class="md-form">
                <div class="row">
                    <div class="col-lg-2"><i class="fas fa-map-marker-alt prefix grey-text"></i></div>
                <div class="col-lg-9"><input type="email" id="materialSubscriptionFormEmail" class="form-control">
                    <label for="materialSubscriptionFormEmail">State</label></div>
                </div>
            </div>
           </div> 
        </div>
             <div class="row">

            <div class="col-lg-12">
            <div class="md-form mt-3">
                <div class="row">
                <div class="col-lg-2"><i class="fas fa-city prefix grey-text"></i></div>
                <div class="col-lg-9"><input type="text" id="materialSubscriptionFormPasswords" class="form-control">
                    <label for="materialSubscriptionFormPasswords">City</label></div>
                </div>
            </div>
            </div>
           
        </div>
   
            <!-- Sign in button -->
            <button class="btn btn-default btn-sm" type="submit">Add</button>

        </form>
        <!-- Form -->

    </div>

</div>
<!-- Material form subscription -->
</div>


     </div>
           </div>
    </div>
</div>
    </div>
</div>
  
        
<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.3/js/mdb.min.js"></script>
    </body>
</html>
