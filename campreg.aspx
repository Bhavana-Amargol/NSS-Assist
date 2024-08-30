<%@ Page Language="C#" AutoEventWireup="true" CodeFile="campreg.aspx.cs" Inherits="NSS_campreg" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Camp registration</title>
    
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
   <style type="text/css" >
       .container{
           width:50%;
           background-color:bisque;
       }

       table {
           width: fit-content;
           box-shadow: rgba(0,0,0,0.5) 7px 7px 10px 10px;
           border-radius: 10px;
       }
       .col2{
           width:50%;
       }
           @media screen {
            .container {
                min-height: 100%;
                min-width: fit-content;
            }
        }
.hidden {
    display: none;
    width: 100%;
    
  } 
       
       .coll{
           
           padding:10px;
           font-size:x-large;
           font-weight:600;
       }
       
       #Button1{
           background-color:red;
           border-style:none;
           color:white;
           font-size:x-large;
           margin-right:2rem;
           border-radius:10px;
           padding:5px;
           
       }
       #Button2{
           background-color:forestgreen;
           border-style:none;
           color:white;
           border-radius:10px;
           font-size:x-large;
           padding:5px;
       }
       #TextBox1,#TextBox2,#TextBox3,#TextBox4,#TextBox5,#TextBox6,#TextBox7,#TextBox8,#TextBox9,#TextBox10,#TextBox11{
           border-radius:10px;
       }
   </style>
    
</head>
<body>
    
    <form id="form1" runat="server">
        <%--<div class="wrapper" >
        <!-- Sidebar  -->
        <nav id="sidebar" style="background-color:#32064A" >
            <div class="sidebar-header" style="background-color:##32064A" >
                <img src="img/NCClogo.png" height="150" width="150" style="margin-left:1.5rem;"/>
            </div>

            <ul class="list-unstyled components" style="background-color:#317773">
                <p style="font-weight:800">NATIONAL CADET CORPS</p>

                <li>
                <a href="viewevents.aspx"  style="background-color:#317773;text-decoration:none;color:white;" 
                        onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">EVENTS</a>
                 </li>
                
                <li>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#317773;text-decoration:none;color:white">CAMPS</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu" style="background-color:#317773;color:white" >
                        <li>
                            <a href="viewcamps.aspx" style="background-color:#317773;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">VIEW CAMP DETAILS</a>
                        </li>
                        <li>
                            <a href="campreg.aspx"  style="background-color:#317773;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">CAMP REGISTRATION</a>
                        </li> 
                        
                    </ul>
                </li>
                 <li>
                <a href="viewparade.aspx"  style="background-color:#317773;text-decoration:none;color:white;" 
                        onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">PARADE</a>
                 </li>
                
                <li>
                    <a href="#pageSubmenu4" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#317773;text-decoration:none;color:white">REIMBURSEMENT</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu4" style="background-color:#317773;color:white" >
                        
                        <li>
                            <a href="viewcampreimbuse.aspx"  style="background-color:#317773;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">VIEW CAMP REIMBURSEMENT</a>
                        </li>    
                        <li>
                            <a href="vieweventreimburse.aspx"  style="background-color:#317773;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">VIEW EVENT REIMBURSEMENT</a>
                        </li>  
                    </ul>
                </li>
                <li >
                    <a href="myprofile.aspx" style="background-color:#317773;text-decoration:none;color:white"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">MY PROFILE</a>
                </li>
                <li >
                    <a href="editprofile.aspx" style="background-color:#317773;text-decoration:none;color:white"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">EDIT PROFILE</a>
                </li>
               
                
            </ul>   
        </nav>--%>
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

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="volunteerhome.aspx" style="color:white"><strong>HOME</strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="volunteerlogin.aspx"style="color:white"><strong>LOGOUT</strong></a>
                            </li>
                            

                        </ul>
                    </div>
                </div>
            </nav>

            
        <div>

     
         <%--<div class="container">--%>
             <center>
        <h1>CAMP REGISTRATION</h1>
        <table align="center" class="container">
            <tr >
                <td class="coll">CAMP NAME</td>
                <td class="col2">
                    <asp:Label ID="Label2" Font-Size="Large" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="coll" colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="coll">Camp Registration Id</td>
                <td class="col2">
                    <asp:TextBox ID="TextBox10" ReadOnly="true" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox10"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="coll">&nbsp;</td>
                <td class="col2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="coll">First Name </td>
                <td class="col2">
                    <asp:TextBox ID="TextBox1" ReadOnly="true" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="coll">&nbsp;</td>
                <td class="col2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="coll">Last Name</td>
                <td class="col2">
                    <asp:TextBox ID="TextBox3" ReadOnly="true" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="coll">&nbsp;</td>
                <td class="col2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="coll">Mobile Number</td>
                <td class="col2">
                    <asp:TextBox ID="TextBox4"  runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="coll">&nbsp;</td>
                <td class="col2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="coll">Email Id</td>
                <td class="col2">
                    <asp:TextBox ID="TextBox5" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="coll">&nbsp;</td>
                <td class="col2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="coll">Parent&#39;s Mobile Number</td>
                <td class="col2">
                    <asp:TextBox ID="TextBox6" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="coll">&nbsp;</td>
                <td class="col2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" ValidationExpression="^[6-9]\d{9}$" runat="server" ControlToValidate="TextBox6" ErrorMessage="INVALID MOBILE NUMBER!" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="coll">Batch Year</td>
                <td class="col2">
                    <asp:TextBox ID="TextBox11" ReadOnly="true" runat="server" Font-Size="Large"  Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox11"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="coll">&nbsp;</td>
                <td class="col2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="coll">Course Year</td>
                <td class="col2">
                    <asp:TextBox ID="TextBox7" ReadOnly="true" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="coll">&nbsp;</td>
                <td class="col2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="coll">Course</td>
                <td class="col2">
                    <asp:TextBox ID="TextBox8" ReadOnly="true" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="coll">&nbsp;</td>
                <td class="col2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="coll">Name of College </td>
                <td class="col2">
                    <asp:TextBox ID="TextBox9" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="coll">&nbsp;</td>
                <td class="col2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <%--<tr>
                <td class="coll">Upload enrollment form here</td>
                <td class="col2">
                    <asp:FileUpload ID="FileUpload1" runat="server" Font-Size="Large" Height="40px" Width="235px" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <br /><br />
              <tr>
                <td class="coll">&nbsp;</td>
                <td class="col2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.pdf)" ControlToValidate="FileUpload1" ErrorMessage="INVALID FILE UPLOAD!" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
              <tr>
            <td colspan="3" align="center">
            <a href="Documents/volunteer form.pdf" download style="color:red;font-size:2rem;" >Click here to download enrollment form</a>
            </td>
        </tr>
            <tr>--%>
                <td class="button" align="center" colspan="3">
                   <asp:Button ID="Button1" runat="server" Text="CLEAR" OnClick="Button1_Click" />
                   <asp:Button ID="Button2" runat="server" Text="SUBMIT" OnClick="Button2_Click" />
                    <br /><br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
           </tr>
        </table>
        </center>
             </div>  

        </div>
    </div>
     </div>

     
</form>
</body>
</html>
