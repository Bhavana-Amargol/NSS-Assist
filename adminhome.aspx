<%@ Page Language="C#" AutoEventWireup="true" Debug="true" CodeFile="adminhome.aspx.cs" Inherits="NSS_adminhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="css/StyleSheet.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script> 


    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
                $('#sidebar').css('display', 'block');
            });
        });

    </script>
    
    

    

</head>
<body>
    




    <!--sidenav-->

	<form id="form1" runat="server">
        <div class="wrapper" >
        <!-- Sidebar  -->
        <nav id="sidebar" style="background-color:#32064A" >
            <div class="sidebar-header" style="background-color:#32064A" >
                <img src="img/logo1.png" height="170" width="170" style="margin-left:1.5rem;"/>
            </div>

            <ul class="list-unstyled components" style="background-color:#32064A">
                <p style="font-weight:800;text-align:center;" >NSS (Surana College South End)</p>
                <p style="font-weight:500;text-align:center;" ></p>

                <li >
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#32064A;text-decoration:none;color:white"><b>EVENTS</b></a>
                    <ul class="collapse list-unstyled" id="homeSubmenu" style="background-color:#32064A">
                        <li>
                            <a href="events.aspx"  style="background-color:#32064A;color:white;text-decoration:none;" onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>ADD EVENT DETAILS</b></a>
                        </li>
                            <li>
                            <a href="editevents.aspx"  style="background-color:#32064A;color:white;text-decoration:none;" onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>EDIT EVENT DETAILS</b></a>
                        </li>
                        <li>
                            <a href="volevents.aspx"  style="background-color:#32064A;color:white;text-decoration:none;" onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>VIEW EVENTS DETAILS</b></a>
                        </li>
                         <li>
                            <a href="addmedia.aspx"  style="background-color:#32064A;color:white;text-decoration:none;" onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>ADD MEDIA</b></a>
                        </li>
                         <li>
                            <a href="vieweventsmedia.aspx"  style="background-color:#32064A;color:white;text-decoration:none;" onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>VIEW MEDIA</b></a>
                        </li>
                        <li>
                            <a href="delemedia.aspx"  style="background-color:#32064A;color:white;text-decoration:none;" onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>DELETE MEDIA</b></a>
                        </li>
                        
                    </ul>
                </li>
                
                <li>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#32064A;text-decoration:none;color:white"><b>CAMPS</b></a>
                    <ul class="collapse list-unstyled" id="pageSubmenu" style="background-color:#32064A;color:white" >
                        <li>
                            <a href="camps.aspx" style="background-color:#32064A;color:white;text-decoration:none"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>ADD CAMP DETAILS</b></a>
                        </li>
                        <li>
                            <a href="editcamps.aspx" style="background-color:#32064A;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>EDIT CAMP DETAILS</b></a>
                        </li>
                        <li>
                            <a href="volcamps.aspx"  style="background-color:#32064A;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>VIEW CAMPS</b></a>
                        </li> 
                        <li>
                            <a href="addmedia.aspx"  style="background-color:#32064A;color:white;text-decoration:none;" onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>ADD MEDIA</b></a>
                        </li>
                         
                         <li>
                            <a href="viewcampmedia.aspx"  style="background-color:#32064A;color:white;text-decoration:none;" onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>VIEW MEDIA</b></a>
                        </li>
                        <li>
                            <a href="delcmedia.aspx"  style="background-color:#32064A;color:white;text-decoration:none;" onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>DELETE MEDIA</b></a>
                        </li>
                    </ul>
                </li>
                
                     <li>
                    <a href="#pageSubmenu2" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#32064A;text-decoration:none;color:white"><b>MEETING</b></a>
                    <ul class="collapse list-unstyled" id="pageSubmenu2" style="background-color:#32064A;color:white" >
                        <li>
                            <a href="meeting.aspx" style="background-color:#32064A;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>ADD MEETING DETAILS</b></a>
                        </li>
                        <li>
                            <a href="editmeeting.aspx"  style="background-color:#32064A;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>EDIT MEETING DETAILS</b></a>
                        </li> 
                        <li>
                            <a href="volmeeting.aspx"  style="background-color:#32064A;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>VIEW MEETING DETAILS</b></a>
                        </li> 
                        
                    </ul>
                </li>
                <li>
                    <a href="#pageSubmenu8" data-toggle="collapse" aria-expanded="false"class="dropdown-toggle"style="background-color:#32064A;text-decoration:none;color:white"><b>CALENDAR</b></a>
                    <ul class="collapse list-unstyled" id="pageSubmenu8" style="background-color:#32064A;color:white" >
                        <li>
                            <a href="calevents.aspx" style="background-color:#32064A;color:white;text-decoration:none"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>ADD CALENDAR OF EVENTS</b></a>
                        </li>
                         <li>
                            <a href="viewcalevents.aspx" style="background-color:#32064A;color:white;text-decoration:none"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>EDIT OR VIEW CALENDAR OF EVENTS</b></a>
                        </li>
                        <li>
                            <a href="calcamps.aspx" style="background-color:#32064A;color:white;text-decoration:none"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>ADD CALENDAR OF CAMPS</b></a>
                        </li>
                         <li>
                            <a href="viewcalcamps.aspx" style="background-color:#32064A;color:white;text-decoration:none"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>EDIT OR VIEW CALENDAR OF CAMPS</b></a>
                        </li>
                    </ul>
              </li>
                <li>
                    <a href="#pageSubmenu4" data-toggle="collapse" aria-expanded="false"class="dropdown-toggle"style="background-color:#32064A;text-decoration:none;color:white"><b>VOLUNTEER SELECTION</b></a>
                    <ul class="collapse list-unstyled" id="pageSubmenu4" style="background-color:#32064A;color:white" >
                        <li>
                            <a href="volunteerapproval.aspx" style="background-color:#32064A;color:white;text-decoration:none"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>APPROVE CANDIDATES</b></a>
                        </li>
                        <li>
                            <a href="viewstudentreg.aspx" style="background-color:#32064A;color:white;text-decoration:none"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>VIEW REGISTERED CANDIDATES</b></a>
                        </li>
                        <li>
                            <a href="volremoval.aspx" style="background-color:#32064A;color:white;text-decoration:none"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>REMOVE VOLUNTEERS</b></a>
                        </li>
                    </ul>
              </li>

                   <li>
                    <a href="#pageSubmenu5" data-toggle="collapse" aria-expanded="false"class="dropdown-toggle" style="background-color:#32064A;text-decoration:none;color:white"><b>DATABASES</b></a>
                    <ul class="collapse list-unstyled" id="pageSubmenu5" style="background-color:#32064A;color:white" >
                        <li>
                            <a href="volunteerdb.aspx" style="background-color:#32064A;color:white;text-decoration:none"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>VOLUNTEER DATABASE</b></a>
                        </li>
                        <li>
                            <a href="registeredcamp.aspx"  style="background-color:#32064A;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>VOLUNTEER REGISTERED FOR CAMPS DATABASE</b></a>
                        </li>
                         <li>
                            <a href="delregcamps.aspx"  style="background-color:#32064A;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b> DELETE REGISTERED CAMPS LIST</b></a>
                        </li>
                        <li>
                            <a href="viewuniformapplied.aspx" style="background-color:#32064A;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>UNIFORM APPLIED DATABASE</b></a>
                        </li>
                        <li>
                            <a href="viewuniformreceived.aspx"  style="background-color:#32064A;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>UNIFORM RECEIVED DATABASE</b></a>
                        </li> 
                        <li>
                            <a href="viewawardreceived.aspx"  style="background-color:#32064A;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>VIEW VOLUNTEER AWARD RECEIVED DATABASE</b></a>
                        </li>
                        <li>
                            <a href="admineditaward.aspx"  style="background-color:#32064A;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>EDIT VOLUNTEER AWARD RECEIVED DATABASE</b></a>
                        </li>
                        <li>
                            <a href="viewcertificatereceived.aspx"  style="background-color:#32064A;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b> VIEW VOLUNTEER CERTIFICATE RECEIVED DATABASE</b></a>
                        </li>
                        <li>
                            <a href="admineditcertificate.aspx"  style="background-color:#32064A;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>EDIT VOLUNTEER CERTIFICATE RECEIVED DATABASE</b></a>
                        </li>
                    </ul>
                </li>  
                <li>
               <a href="#pageSubmenu7" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#32064A;text-decoration:none;color:white"><b>UPLOADS</b></a>
                    <ul class="collapse list-unstyled" id="pageSubmenu7" style="background-color:#32064A;color:white" >
                        <li>
                            <a href="feedbackform.aspx" style="background-color:#32064A;color:white;text-decoration:none"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>UPLOAD FEEDBACK FORM LINK</b></a>
                        </li>
                         <li>
                            <a href="editform.aspx" style="background-color:#32064A;color:white;text-decoration:none"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>EDIT FEEDBACK FORM LINK</b></a>
                        </li>
                        <%--<li>
                            <a href="photos.aspx" style="background-color:#32064A;color:white;text-decoration:none"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>UPLOAD PREVIOUSYEARS EVENT AND CAMP PHOTOS LINK</b></a>
                        </li>
                         <li>
                            <a href="editphotos.aspx" style="background-color:#32064A;color:white;text-decoration:none"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>EDIT PHOTOS LINK</b></a>
                        </li>--%>
                        <li>
                            <a href="usize.aspx" style="background-color:#32064A;color:white;text-decoration:none"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>UPLOAD UNIFORM PRICE</b></a>
                        </li>
                        
               </ul>
                </li>
                <li>
                <a href="#pageSubmenu9" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#32064A;text-decoration:none;color:white"><b>ATTENDANCE</b></a>
                    <ul class="collapse list-unstyled" id="pageSubmenu9" style="background-color:#32064A;color:white" >
                        <li>
                            <a href="eventattndnce.aspx" style="background-color:#32064A;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b> MARK EVENT ATTENDANCE</b></a>
                        </li>
                        <li>
                            <a href="campattndnce.aspx"  style="background-color:#32064A;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>MARK CAMP ATTENDANCE</b></a>
                        </li> 
                        <li>
                            <a href="meetingattndnce.aspx"  style="background-color:#32064A;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b> MARK MEETING ATTENDANCE</b></a>
                        </li> 
                        
                    </ul>
                    </li>
                <li>
               <a href="#pageSubmenu6" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#32064A;text-decoration:none;color:white"><b>FORGOT PASSWORD</b></a>
                    <ul class="collapse list-unstyled" id="pageSubmenu6" style="background-color:#32064A;color:white" >
                        <li>
                            <a href="forgotadminpwd.aspx" style="background-color:#32064A;color:white;text-decoration:none"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>FORGOT ADMIN PASSWORD</b></a>
                        </li>
               </ul>
                </li>

                <li>
               <a href="#pageSubmenu10" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#32064A;text-decoration:none;color:white"><b>MANAGE LOGIN</b></a>
                    <ul class="collapse list-unstyled" id="pageSubmenu10" style="background-color:#32064A;color:white" >
                        <li>
                            <a href="viewlogin.aspx" style="background-color:#32064A;color:white;text-decoration:none"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>MANAGE VOLUNTEER LOGIN</b></a>
                        </li>
               </ul>
                </li>
            </ul>

            
        </nav>

        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg " style="background-color:#32064A;border-radius:10px">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" style="background-color:#32064A;border-style:none;"  class="btn btn-info">
                        <i class="fas fa-align-left" ></i>
                        <span ><img src="img/menu.png" height="50" width="80"/>MENU</span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>
                     
                            <p style="font-family:'Times New Roman', Times, serif;font-size:30px;font-weight:900;margin-left:500px;color:whitesmoke;">HELLO ADMIN!</p>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="adminhome.aspx" style="color:white"><u>HOME</u></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="adminlogin.aspx"style="color:white"><u>LOGOUT</u></a>
                            </li>
                           
                         </ul>
                         <img src="img/we.png" height="75px" width="75px"  />
                    </div>
                </div>
            </nav>

            
            
            

            
        </div>
    </div>
	
    </form>
	
</body>
    

    
    
    
</html>

