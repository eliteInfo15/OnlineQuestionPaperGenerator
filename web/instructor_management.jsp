
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Material Design Bootstrap Template</title>
   
    <!-- Font Awesome -->
    <link rel="shortcut icon" type="image/ico" href="question.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" integrity="sha256-UzFD2WYH2U1dQpKDjjZK72VtPeWP50NoJjd26rnAdUI=" crossorigin="anonymous" />
    <!-- Bootstrap core CSS -->
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.3/css/mdb.min.css" rel="stylesheet">

<link  rel="stylesheet" type="text/css" href="compiled.css">

        <title>JSP Page</title>
        <style type="text/css">
            #middlediv{
                height: 120px;
                }
                #slide-out{
                    background-color:#4b3e8a;
                }
               
        </style>
        
    </head>
    <body  class="">
       
        <!-- Sidebar navigation -->
        <ul id="slide-out" class="side-nav fixed  custom-scrollbar " style="width: 240px; transform: translateX(0%)" >
            <!-- Logo -->
           
            <!-- Side navigation links -->
            <li>
                <ul class="collapsible collapsible-accordion">
                    <li><a class="collapsible-header waves-effect arrow-r" ><i class="fa fa-home white-text" sytle="width:10px"></i>&nbsp;&nbsp;&nbsp;&nbsp;Home</a>
                        
                    </li>
                    <li><a class="collapsible-header waves-effect arrow-r"><i class="fa fa-chalkboard-teacher white-text"></i>&nbsp;&nbsp;&nbsp;&nbsp;Manage Instructors</a>
                        
                    </li>
                    <li class=""><a class="collapsible-header waves-effect arrow-r"><i class="fa fa-question-circle white-text"></i>&nbsp;&nbsp;&nbsp;&nbsp;Manage Questions</a>
                        
                    </li>
                    <li><a class="collapsible-header waves-effect arrow-r"><i class="fa fa-graduation-cap white-text"></i>&nbsp;&nbsp;&nbsp;&nbsp;Manage Courses</a>
                        
                    </li>
                     <li class=""><a class="collapsible-header waves-effect arrow-r"><i class="fa fa-swatchbook white-text"></i>&nbsp;&nbsp;&nbsp;&nbsp;Manage Subjects</a>
                       
                    </li>
                     <li class=""><a class="collapsible-header waves-effect arrow-r"><i class="fa fa-book white-text"></i>&nbsp;&nbsp;&nbsp;&nbsp;Manage Units</a>
                        
                    </li>
                     <li class=""><a class="collapsible-header waves-effect arrow-r"><i class="fa fa-file-alt white-text"></i>&nbsp;&nbsp;&nbsp;&nbsp;Papers</i></a>
                        
                    </li>
                </ul>
            </li>
            <!--/. Side navigation links -->
            <div class="sidenav-bg mask-strong"></div>
        </ul>
        
        <!--/. Sidebar navigation -->
        <!-- Navbar -->
        <div class="container">
       <nav class="navbar fixed-top navbar-toggleable-md white navbar-expand-lg scrolling-navbar double-nav">
            <!-- SideNav slide-out button -->
           
            
                <a href="#" data-activates="slide-out" class=" button-collapse" style="color:#4b3e8a; width: 17%"><i class="fa fa-bars"></i></a>
                
                <a class="navbar-brand" Style="color: #4b3e8a; "ref="#"> <i class="fas fa-book-reader prefix  fa-lg"></i><b>&nbsp;&nbsp;&nbsp;&nbsp;Instructor Management</b></a>
                
              
                <button type="button" class="btn btn-rounded white-text ml-auto" style="background-color:#4b3e8a"><i class="fas fa-sign-out-alt"></i>Logout</button>
              
               
            
       </nav>
        </div>
        
        <div class="container" id="middlediv">
            
        </div>
        
<div class="container" id="maincontainer"> 
    <div class="row">
        <div class="col-lg-3">
        


        </div>
           <div class="col-lg-9">   
                <div class="container" id="container"></div>      

  <ul class="nav nav-tabs nav-justified md-tabs" style="background-color:#4b3e8a;"id="myTabJust" role="tablist">
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
  <h3 class="card-header text-center font-weight-bold white-text text-uppercase py-4" id='card-header' style="background-color:#4b3e8a;">View Instructor's Details</h3>
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
<button class="btn dropdown-toggle mr-4 white-text" type="button" data-toggle="dropdown"
  aria-haspopup="true" aria-expanded="false" style="background-color:#4b3e8a;">Choose Operation</button>

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

    <h5 class="card-header white-text text-center py-4" id="addInstructor" style="background-color:#4b3e8a">
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
                <i class="fas fa-user-edit prefix " style="font-size:20px;color:#4b3e8a"></i>
                <input type="text" id="materialSubscriptionFormInstructor" class="form-control">
                    <label for="materialSubscriptionFormInstructor">Instructor Id</label>
                </div>
            </div>
            </div>
            <div class="col-lg-4">
            <div class="md-form">
                <div class="row">
                    <i class="fas fa-user prefix" style="font-size:20px;color: #4b3e8a"></i>
                <input type="email" id="materialSubscriptionFormFirstNmae" class="form-control">
                    <label for="materialSubscriptionFormFirstName">First Name</label>
                </div>
            </div>
           </div> 
           <div class="col-lg-4">
            <div class="md-form">
                <div class="row">
                    <i class="fas fa-edit prefix " style="font-size:20px;color: #4b3e8a"></i>
                <input type="email" id="materialSubscriptionFormLastName" class="form-control">
                    <label for="materialSubscriptionFormLastName">Last Name</label>
                </div>
            </div>
           </div>     
           </div>
         <div class="row">

            <div class="col-lg-6">
            <div class="md-form mt-3">
                <div class="row">
                <i class="fas fa-key prefix" style="font-size:20px;color: #4b3e8a"></i>
                <input type="text" id="materialSubscriptionFormPasswords" class="form-control">
                    <label for="materialSubscriptionFormPasswords">Password</label>
                </div>
            </div>
            </div>
            <div class="col-lg-6">
            <div class="md-form">
                <div class="row">
                    <i class="fas fa-key prefix " style="font-size:20px;color: #4b3e8a"></i>
               <input type="email" id="materialSubscriptionFormConPassword" class="form-control">
                    <label for="materialSubscriptionFormConPassword">Confirm Password</label>
                </div>
            </div>
           </div> 
        </div>
             <div class="row">

            <div class="col-lg-6">
            <div class="md-form mt-3">
                <div class="row">
                <i class="fas fa-calendar-alt prefix " style="font-size:20px;color: #4b3e8a"></i>
                <input type="text" id="materialSubscriptionFormDob" class="form-control">
                    <label for="materialSubscriptionFormDob">Date Of Birth</label>
                </div>
            </div>
            </div>
            <div class="col-lg-6">
            <div class="md-form">
                <div class="row">
                    <i class="fas fa-envelope prefix " style="font-size:20px;color: #4b3e8a"></i>
                <input type="email" id="materialSubscriptionFormEmail" class="form-control">
                    <label for="materialSubscriptionFormEmail">Email</label>
                </div>
            </div>
           </div> 
        </div>
             <div class="row">

            <div class="col-lg-6">
            <div class="md-form mt-3">
                <div class="row">
            <i class="fas fa-mobile-alt prefix " style="font-size:20px;color: #4b3e8a"></i>
               <input type="text" id="materialSubscriptionFormMobile" class="form-control">
                    <label for="materialSubscriptionFormMobile">Mobile Number</label>
                </div>
            </div>
            </div>
            <div class="col-lg-6">
            <div class="md-form">
                <div class="row">
                    <i class="fas fa-map-marker-alt prefix " style="font-size:20px;color: #4b3e8a"></i>
               <input type="email" id="materialSubscriptionFormState" class="form-control">
                    <label for="materialSubscriptionFormState">State</label>
                </div>
            </div>
           </div> 
        </div>
             <div class="row">

            <div class="col-lg-12">
            <div class="md-form mt-3">
                <div class="row">
               <i class="fas fa-city prefix" style="font-size:20px;color: #4b3e8a"></i>
              <input type="text" id="materialSubscriptionFormCity" class="form-control">
                    <label for="materialSubscriptionFormCity">City</label>
                </div>
            </div>
            </div>
           
        </div>
   
            <!-- Sign in button -->
            <button class="btn white-text btn-sm" type="submit" style="background-color:#4b3e8a">Add</button>

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
        <!-- /.Navbar -->
    

         <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.3/js/mdb.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <script>

        // SideNav Initialization
        $(".button-collapse").sideNav();
        
        new WOW().init();
    
    </script><div class="drag-target" style="left: 0px; touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></div>




    <div class="hiddendiv common"></div>
    </body>
</html>
