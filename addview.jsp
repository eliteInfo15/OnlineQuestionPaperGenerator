<%-- 
    Document   : add
    Created on : 7 Jul, 2019, 11:30:17 PM
    Author     : Priyanshi chopra
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Questions</title>
        
        <!-- Font Awesome -->
       <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <!-- Bootstrap core CSS -->
        <link href="MDB-Free_4.8.3/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="MDB-Free_4.8.3/css/mdb.min.css" rel="stylesheet">
        <!-- DataTables CSS -->
        <link href="css/addons/datatables.min.css" rel="stylesheet">
        <!-- Your custom styles (optional) -->
        <link href="MDB-Free_4.8.3/css/style.css" rel="stylesheet">
        
        <script src="https://cdn.ckeditor.com/4.12.1/standard/ckeditor.js"></script>
        <style>
            #navbar-heading{
                margin: 10px 2px;
                height: auto;
                text-align: center;
            }
            #slide-out, nav, #bread, h3, option, .btn-primary{
                background-color: #4b3e8a !important;
                color: #fff !important;
            }
        </style>
 
  
             <script type="text/javascript">
             function optionCheck()
              {
                if(document.getElementById('defaultGroupExample1').checked)
                {
                    document.getElementById('rad').style.visibility='visible';
                    document.getElementById('check1').style.visibility='hidden';
                }
                else if(document.getElementById('defaultGroupExample2').checked)
                {
                    document.getElementById('check1').style.visibility='visible';
                    document.getElementById('rad').style.visibility='hidden';
                }
                else
                {
                   return false;
                }
    
             }
             </script>
             
               
    </head>
   <body class="fixed-sn">
        <!--Double navigation-->
        <header>
            <!-- Sidebar navigation -->
            <div id="slide-out" class="side-nav fixed" style="background-color: #4b3e8a">
                <ul class="custom-scrollbar">
                    <!-- Logo -->
                    <li>
                        <div class="logo-wrapper waves-light" id="navbar-heading">
                            <a href="#"><h3>Question Paper Generator</h3></a>
                        </div>
                    </li>
                    <!--/. Logo -->
                    <!-- Side navigation links -->
                    <li>
                        <ul class="collapsible collapsible-accordion">
                            <li><a href="" class="collapsible-header waves-effect"><i class="fas fa-home"></i> Home </a></li>
                            <li><a href="" class="collapsible-header waves-effect"><i class="fas fa-user-graduate"></i> Students </a></li>
                            <li><a href="" class="collapsible-header waves-effect"><i class="fas fa-map-marker"></i> Centers </a></li>
                            <li><a href="" class="collapsible-header waves-effect"><i class="fas fa-clipboard"></i> Exams </a></li>
                            <li><a href="" class="collapsible-header waves-effect"><i class="fas fa-file-alt"></i> Results </a></li>
                            <li><a href="" class="collapsible-header waves-effect"><i class="fas fa-trophy"></i> Certificates </a></li>
                             <li><a href="" class="collapsible-header waves-effect"><i class="fas fa-exclamation-circle"></i>Notice </a></li>
                        </ul>
                    </li>
                    <!--/. Side navigation links -->
                </ul>
                <div class="sidenav-bg mask-strong"></div>
            </div>
            <!--/. Sidebar navigation -->
            <!-- Navbar -->
            <nav class="navbar fixed-top navbar-toggleable-md navbar-expand-lg scrolling-navbar double-nav" style="background-color: #4b3e8a">
                <!-- SideNav slide-out button -->
                <div class="float-left">
                    <a href="#" data-activates="slide-out" class="button-collapse black-text"><i class="fas fa-bars"></i></a>
                </div>
                <div class="breadcrumb-dn mr-auto" id="bread">
                    <p>Question Paper Generator</p>
                </div>
                <ul class="nav navbar-nav nav-flex-icons ml-auto">
                    <li class="nav-item"><a class="nav-link"><i class="fas fa-sign-out-alt"></i> <span class="clearfix d-none d-sm-inline-block">Logout</span></a></li>
                </ul>
            </nav>
            <!-- /.Navbar -->
        </header>
        <!--/.Double navigation-->   
        <!--Main layout-->
        <main style="margin: 10px;">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="add-tab" data-toggle="tab" href="#addQuestions" role="tab" aria-controls="add"aria-selected="true">Add Questions</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="view-tab" data-toggle="tab" href="#viewQuestions" role="tab" aria-controls="view"aria-selected="true">View Questions</a>
                </li>
            </ul>
            <br>
            <br>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="addQuestions" role="tabpanel" aria-labelledby="add-tab"> 
          
                       <!--Dropdown primary-->
               <div class="row">    
                        <div class="col-sm-2">
                            Enter Course
                        </div
                        
                         <form id="myform" action="">
                           <div class="col-sm-3">
                                   <select id="category" size="1" name="select_category" class="browser-default custom-select">
        <option value="" selected="selected" style="background-color: #4b3e8a">Select category/course</option>
                                   </select>
                           
                            <select id="subcategory" size="1" name="select_subcategory" class="browser-default custom-select">
        <option value="" selected="selected" style="background-color: #4b3e8a">Select sub-category/branch</option>
                            </select>
                       
                            <select id="subject" size="1" name="select_subject" class="browser-default custom-select">
        <option value="" selected="selected" style="background-color: #4b3e8a">Select subject</option>
                            </select>
                         </form>
            <%--              <script>
            window.onload = function() {
                var category = document.getElementById('category'),
                    subcategory = document.getElementById('subcategory'),
                    subject = document.getElementById('subject');
                
                <% 
                try{
                    sqlPackage.SqlUtil.connectDatabase();
                    ResultSet abc = sqlPackage.SqlUtil.read("select * from category where category_status=1;");
                    while(abc.next()){
                        int c_id = abc.getInt("c_id");
                        String c_name = abc.getString("category_name");
                        %>
                        category.options[category.options.length] = new Option("<%=c_name%>","<%=c_id%>");
                        <%
                    }
                } catch(Exception ex){
                    System.out.println("Exception cught : "+ex);
                }
                %>
                
                category.onchange = function () {
                    subcategory.length = 1;
                    subject.length = 1;
                    if (this.selectedIndex < 1) 
                        return;
                    <% 
                    try{
                        sqlPackage.SqlUtil.connectDatabase();
                        ResultSet abc = sqlPackage.SqlUtil.read("select * from subcategory where subcategory_status=1;");
                        while(abc.next()){
                            int c_id = abc.getInt("c_id");
                            int s_c_id = abc.getInt("s_c_id");
                            String s_c_name = abc.getString("subcategory_name");
                            %>
                            if(this.value == <%=c_id%>){
                                subcategory.options[subcategory.options.length] = new Option("<%=s_c_name%>","<%=s_c_id%>");
                            }
                            <%
                        }
                    } catch(Exception ex){
                        System.out.println("Exception cught : "+ex);
                    }
                    %>
                };
                category.onchange();
                subcategory.onchange = function() {
                    subject.length = 1;
                    if(this.selectedIndex < 1)
                        return;
                    <%
                        try{
                            sqlPackage.SqlUtil.connectDatabase();
                            ResultSet abc = sqlPackage.SqlUtil.read("select * from subject where subject_status = 1;");
                            while(abc.next()){
                                int c_id = abc.getInt("c_id");
                                int s_c_id = abc.getInt("s_c_id");
                                int s_id = abc.getInt("s_id");
                                String s_name = abc.getString("subject_name");
                                %>
                                if(this.value == <%=s_c_id%>){
                                    subject.options[subject.options.length] = new Option("<%=s_name%>","<%=s_id%>");
                                }
                                <%
                            }
                        } catch(Exception ex){
                            System.out.println("Exception caught : "+ex);
                        }
                    %>
                };
            };  
        </script>
            --%>
                </div>
               </div>
                    <!--/Dropdown primary-->
                    <br>
                    <br>
                    <div id="content" style="visibility: visible"  onchange="return showhide();>
                    <div class="row">
                        <div class="col-sm-2">Enter the question</div>
                        <div class="col-sm-10">
                            <textarea name="editor1"></textarea>
                            <script src="https://cdn.ckeditor.com/4.12.1/standard/ckeditor.js"></script>
                            <script>
                                CKEDITOR.replace('editor1');
                            </script>    
                        </div>
                    </div>

                    <br>
                    <br>
                    <div class="row">
                        <div class="col-sm-2">Enter question type</div>
                        <div class="col-sm-3">
                            <!-- Group of default radios - option 1 -->
<div class="custom-control custom-radio"  id="sing" >
  <input type="radio" value="single" class="custom-control-input" id="defaultGroupExample1" name="toq" onclick="return optionCheck();">
  <label class="custom-control-label" for="defaultGroupExample1">Single choice answers</label>
</div>
           <div id="rad" style="visibility: hidden">
<!-- Default inline 1-->
<div class="custom-control custom-radio custom-control-inline">
  <input type="radio"  class="custom-control-input" id="defaultInline1" name="options">
  <label class="custom-control-label" for="defaultInline1">1</label>
</div>

<!-- Default inline 2-->
<div class="custom-control custom-radio custom-control-inline">
  <input type="radio" class="custom-control-input" id="defaultInline2" name="options">
  <label class="custom-control-label" for="defaultInline2">2</label>
</div>


<!-- Default inline 3-->
<div class="custom-control custom-radio custom-control-inline">
  <input type="radio" class="custom-control-input" id="defaultInline3" name="options">
  <label class="custom-control-label" for="defaultInline3">3</label>
</div>

<!-- Default inline 4-->
<div class="custom-control custom-radio custom-control-inline">
  <input type="radio" class="custom-control-input" id="defaultInline4" name="options">
  <label class="custom-control-label" for="defaultInline4">4</label>
</div>


                            </div>

<!-- Group of default radios - option 2 -->
<div class="custom-control custom-radio" id="mul" >
  <input type="radio" value="multiple" class="custom-control-input" id="defaultGroupExample2" name="toq" onclick="return optionCheck();">
  <label class="custom-control-label" for="defaultGroupExample2">Multiple choice answers</label>
</div>

  <div id="check1" style="visibility: hidden">
<!-- Material inline 1 -->
<div class="form-check form-check-inline">
  <input type="checkbox" class="form-check-input" id="materialInline1" name="opt1">
  <label class="form-check-label" for="materialInline1">1</label>
</div>

<!-- Material inline 2 -->
<div class="form-check form-check-inline">
    <input type="checkbox" class="form-check-input" id="materialInline2" name="opt2">
    <label class="form-check-label" for="materialInline2">2</label>
</div>

<!-- Material inline 3 -->
<div class="form-check form-check-inline">
    <input type="checkbox" class="form-check-input" id="materialInline3" name="opt3">
    <label class="form-check-label" for="materialInline3">3</label>
</div>

<div class="form-check form-check-inline">
    <input type="checkbox" class="form-check-input" id="materialInline4" name="opt4">
    <label class="form-check-label" for="materialInline4">4</label>
</div>

</div>
 </div>
                    </div>

                    <br><br>
                    <div class="row">
                        <div class="col-sm-2">Enter marks</div>
                        <div class="col-sm-2"><input type="text" name="marks" id="exampleForm2" class="form-control" placeholder="Enter the marks"></div>
                    </div>
                    <br>
                    <br>
                    <input type="submit" value="Add" name="btn" onlcick="return alertfun();">
               </div> 
                <div class="tab-pane fade" id="viewQuestions" role="tabpanel" aria-labelledby="view-tab">
                         <div class="col-sm-2">
                        </div>
                         <div class="row">    
                        <div class="col-sm-2">
                            Enter Course
                        </div
                 
                         <form id="myform1" action="">
                           <div class="col-sm-3">
                                   <select id="viewcategory" size="1" name="select_category" class="browser-default custom-select">
        <option value="" selected="selected" style="background-color: #4b3e8a">Select category/course</option>
                                   </select>
                           
                            <select id="viewsubcategory" size="1" name="select_subcategory" class="browser-default custom-select">
        <option value="" selected="selected" style="background-color: #4b3e8a">Select sub-category/branch</option>
                            </select>
                       
                            <select id="viewsubject" size="1" name="select_subject" class="browser-default custom-select">
        <option value="" selected="selected" style="background-color: #4b3e8a">Select subject</option>
                            </select>
                                 </form>
                
                <%--
                          <script>
            window.onload = function() {
                var viewcategory = document.getElementById('viewcategory'),
                    viewsubcategory = document.getElementById('viewsubcategory'),
                    viewsubject = document.getElementById('viewsubject');
                
                <% 
                try{
                    sqlPackage.SqlUtil.connectDatabase();
                    ResultSet abc = sqlPackage.SqlUtil.read("select * from category where category_status=1;");
                    while(abc.next()){
                        int c_id = abc.getInt("c_id");
                        String c_name = abc.getString("category_name");
                        %>
                        viewcategory.options[viewcategory.options.length] = new Option("<%=c_name%>","<%=c_id%>");
                        <%
                    }
                } catch(Exception ex){
                    System.out.println("Exception cught : "+ex);
                }
                %>
                
                viewcategory.onchange = function () {
                    viewsubcategory.length = 1;
                    viewsubject.length = 1;
                    if (this.selectedIndex < 1) 
                        return;
                    <% 
                    try{
                        sqlPackage.SqlUtil.connectDatabase();
                        ResultSet abc = sqlPackage.SqlUtil.read("select * from subcategory where subcategory_status=1;");
                        while(abc.next()){
                            int c_id = abc.getInt("c_id");
                            int s_c_id = abc.getInt("s_c_id");
                            String s_c_name = abc.getString("subcategory_name");
                            %>
                            if(this.value == <%=c_id%>){
                                viewsubcategory.options[viewsubcategory.options.length] = new Option("<%=s_c_name%>","<%=s_c_id%>");
                            }
                            <%
                        }
                    } catch(Exception ex){
                        System.out.println("Exception cught : "+ex);
                    }
                    %>
                };
                viewcategory.onchange();
                viewsubcategory.onchange = function() {
                    viewsubject.length = 1;
                    if(this.selectedIndex < 1)
                        return;
                    <%
                        try{
                            sqlPackage.SqlUtil.connectDatabase();
                            ResultSet abc = sqlPackage.SqlUtil.read("select * from subject where subject_status = 1;");
                            while(abc.next()){
                                int c_id = abc.getInt("c_id");
                                int s_c_id = abc.getInt("s_c_id");
                                int s_id = abc.getInt("s_id");
                                String s_name = abc.getString("subject_name");
                                %>
                                if(this.value == <%=s_c_id%>){
                                    viewsubject.options[viewsubject.options.length] = new Option("<%=s_name%>","<%=s_id%>");
                                }
                                <%
                            }
                        } catch(Exception ex){
                            System.out.println("Exception caught : "+ex);
                        }
                    %>
                };
            };  
        </script>
                --%>
                </div>
               </div>
                    
                    <!--/Dropdown primary-->
            <!--/Dropdown primary-->
            <br>
            <br>
                <table id="dtMaterialDesignExample" class="table table-bordered" style="text-align: center" cellspacing="0" width="100%" onchange="return showhide();">
                    <thead>
                        <tr>
                            <th>Questions</th>
                            <th>Marks</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tr>
                        <th>
                            <table id="dt-basic-checkbox" class="table table-borderless" cellspacing="0" width="80%">
                                <tr>
                                    <th colspan="3">Question1</th>
                                </tr>
                                <tr>
                                    <td>
                                     
                                        <div class="custom-control custom-radio">
  <input type="radio" class="custom-control-input" id="defaultGroupExample1" name="groupOfDefaultRadios">
  <label class="custom-control-label" for="defaultGroupExample1"> </label>
</div>
                                    </td>    
                                    <td>A</td>
                                    <td>Option 1</td>
                                </tr>
                                <tr>
                                    <td>
                                       <div class="custom-control custom-radio">
  <input type="radio" class="custom-control-input" id="defaultGroupExample2" name="groupOfDefaultRadios">
  <label class="custom-control-label" for="defaultGroupExample2"> </label>
 </div>

                                    </td>
                                    <td> B</td>
                                    <td>Option 2</td>
                                </tr>
                                <tr>
                                    <td>
                                        <%--
                                        <div class="custom-control custom-radio">
                                            <input type="radio" class="custom-control-input" id="defaultCheckedDisabled" name="a">
                                            <label class="custom-control-label" for="defaultCheckedDisabled"></label>
                                        </div>
                                        --%>
                                        <div class="custom-control custom-radio">
  <input type="radio" class="custom-control-input" id="defaultGroupExample3" name="groupOfDefaultRadios">
  <label class="custom-control-label" for="defaultGroupExample3"></label>
</div>
                                    </td>
                                    <td> C</td>
                                    <td>Option 3</td>
                                </tr>
                                <tr>
                                    <td>
                                       <%--
                                        <div class="custom-control custom-radio">
                                            <input type="radio" class="custom-control-input" id="defaultUncheckedDiabled" name="a">
                                            <label class="custom-control-label" for="defaultUncheckedDisabled"></label>
                                        </div>
                                       --%>
                                       <div class="custom-control custom-radio">
  <input type="radio" class="custom-control-input" id="defaultGroupExample4" name="groupOfDefaultRadios">
  <label class="custom-control-label" for="defaultGroupExample4"> </label>
</div>
                                    </td>
                                    <td> D</td>
                                    <td>Option 4</td>
                                </tr>
                            </table>
                        </th>
                        <th>2</th>
                        <th>
                            <button type="button" class="btn btn-success"><i class="far fa-edit"></i>  Edit</button>
                      </th>
                        <th>
                            <button type="button" class="btn btn-danger"><i class="fas fa-trash"></i>  Delete</button>
                        </th>
                    </tr>
                </table>
            </div>
            </div>
               
        </main>
       
     
        
       
        
        
        <!-- JQuery -->
        <script type="text/javascript" src="MDB-Free_4.8.3/js/jquery-3.4.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="MDB-Free_4.8.3/js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="MDB-Free_4.8.3/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="MDB-Free_4.8.3/js/mdb.min.js"></script>
       
        <link href="css/addons/datatables-select.min.css" rel="stylesheet">
            
    </body>
</html>

