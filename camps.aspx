<%@ Page Language="C#" AutoEventWireup="true" CodeFile="camps.aspx.cs" Inherits="NSS_camps" %>

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
    <style type="text/css">
        .container{
            
            width:50%;
            min-height:100%;
            border-style:none;
            box-shadow:rgba(0,0,0,0.5) 10px 10px 10px 10px;
            background-color:teal;
            margin-left:24rem;
        }
        body {
  min-height: 100vh;
}
        
         @media screen {
         .container{
            
            width:50%;
            min-height:100%;
            border-style:none;
            box-shadow:rgba(0,0,0,0.5) 10px 10px 10px 10px;
            background-color:teal;
            margin-left:24rem;
            min-height:100%;
            min-width:fit-content;
        }
        .hidden {
    display: none;
    width: 100%;
    
  }
}
        .col1{
            text-align:center;
            font-size:x-large;
            font-weight:700;
            color:white;

        }
        .coll2 td{
            margin-left:5rem;
            width:30%;

        }
        table td {
            color:black;
            

        }
        #Button1{
            font-size:x-large;
            background-color:forestgreen;
           border-style:none;
           color:white;
           border-radius:10px;
           padding:5px;

           margin-right:2rem;
       
       }
       #Button2{
           font-size:x-large;
           background-color:red;
           border-style:none;
           color:white;
           border-radius:10px;
           padding:5px;
       }
    </style>
    
</head>
<body>
    <%--<div class="wrapper" >
        <!-- Sidebar  -->
        <nav id="sidebar" style="background-color:#32064A" >
            <div class="sidebar-header" style="background-color:#32064A" >
                <img src="img/logo1.png" height="170" width="170" style="margin-left:1.5rem;"/>
            </div>

            <ul class="list-unstyled components" style="background-color:#32064A">
                <p style="font-weight:800;text-align:center;" >NATIONAL SERVICE SCHEME</p>
                <li >
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" style="background-color:#32064A;text-decoration:none;color:white"><b>EVENTS</b></a>
                    <ul class="collapse list-unstyled" id="homeSubmenu" style="background-color:#32064A">
                        <li>
                            <a href="events.aspx"  style="background-color:#32064A;color:white;text-decoration:none;" onmouseover="this.style.backgroundColor="'#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>ADD EVENT DETAILS</b></a>
                        </li>
                        <li>
                            <a href="editevents.aspx"  style="background-color:#32064A;color:white;text-decoration:none;" onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>EDIT EVENT DETAILS</b></a>
                        </li>
                        <li>
                            <a href="viewevents.aspx"  style="background-color:#32064A;color:white;text-decoration:none;" onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>VIEW EVENTS</b></a>
                        </li>
                        
                    </ul>
                </li>
                
                <li>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" style="background-color:#32064A;text-decoration:none;color:white"><b>CAMPS</b></a>
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
                    </ul>
                </li>
                
                     <li>
                    <a href="#pageSubmenu2" data-toggle="collapse" aria-expanded="false"  style="background-color:#32064A;text-decoration:none;color:white"><b>MEETING</b></a>
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
                    <a href="#pageSubmenu4" data-toggle="collapse" aria-expanded="false" style="background-color:#32064A;text-decoration:none;color:white"><b>VOLUNTEER SELECTION</b></a>
                    <ul class="collapse list-unstyled" id="pageSubmenu4" style="background-color:#32064A;color:white" >
                        <li>
                            <a href="volunteerapproval.aspx" style="background-color:#32064A;color:white;text-decoration:none"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>APPROVE CANDIDATES</b></a>
                        </li>
                    </ul>
              </li>

                   <li>
                    <a href="#pageSubmenu5" data-toggle="collapse" aria-expanded="false" style="background-color:#32064A;text-decoration:none;color:white"><b>DATABASES</b></a>
                    <ul class="collapse list-unstyled" id="pageSubmenu5" style="background-color:#32064A;color:white" >
                        <li>
                            <a href="voldb.aspx" style="background-color:#32064A;color:white;text-decoration:none"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>VOLUNTEER DATABASE</b></a>
                        </li>
                        <li>
                            <a href="viewuniapplied.aspx" style="background-color:#32064A;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>UNIFORM APPLIED DATABASE</b></a>
                        </li>
                        <li>
                            <a href="viewunireceived.aspx"  style="background-color:#32064A;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>UNIFORM RECEIVED DATABASE</b></a>
                        </li> 
                        <li>
                            <a href="viewawardreceived.aspx"  style="background-color:#32064A;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>VOLUNTEER AWARD RECEIVED DATABASE</b></a>
                        </li>
                        <li>
                            <a href="viewcertificatereceived.aspx"  style="background-color:#32064A;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>VOLUNTEER CERTIFICATE RECEIVED DATABASE</b></a>
                        </li>
                    </ul>
                </li>  
               
                <li>

                    <a href="editprofile.aspx" style="background-color:#32064A;text-decoration:none;color:white"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#32064A'"><b>EDIT PROFILE</b></a>
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
                                <a class="nav-link" href="adminhome.aspx" style="color:white"><u>HOME</u></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="adminlogin.aspx"style="color:white"><u>LOGOUT</u></a>
                            </li>
                         </ul>
                    </div>
                </div>
            </nav>

            
   <div>
       </div>
            <form id="form1" runat="server">
         <div class="container" style="margin-top:6rem;" align="center">
            <h1 style="color:black" align="center">ADD CAMP DETAILS</h1>

            <center>
                <table align="center">
                <tr hidden="hidden">
                    <td class="col1" >Camp Id</td>
                    <td class="coll2">
                        <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="col1">Camp Name</td>
                    <td class="coll2">
                        <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large" Height="40px" ToolTip="Ex:Camp1"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="col1">&nbsp;</td>
                    <td class="coll2">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="[a-zA-Z0-9 ]*$" ControlToValidate="TextBox2" ErrorMessage="INVALID NAME!.Special characters are not allowed" ForeColor="White" ></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="col1">Description</td>
                    <td class="coll2">
                        <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="col1">&nbsp;</td>
                    <td class="coll2">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationExpression="[a-zA-Z0-9_ ]*$" runat="server" ControlToValidate="TextBox3" ErrorMessage="INVALID DESCRIPTION!.Special characters are not allowed." ForeColor="White" Font-Size="Medium"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="col1">Starting Date</td>
                    <td class="coll2">
                        <asp:TextBox ID="TextBox4" runat="server" Style="margin-left:4rem;"  ReadOnly="true" Font-Size="Large" Height="40px"  ></asp:TextBox>
                        <asp:ImageButton ID="ImageButton1" Style="margin-bottom:-1rem;" ImageUrl="~/NSS/img/planner.png" CausesValidation="false" Height="50" Width="50" runat="server"  OnClick="ImageButton1_Click"  />
            
                        <asp:Calendar ID="Calendar1" Style="position:absolute" runat="server" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" VisibleDate="2022-12-16" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="FullMonth" Width="330px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                 <DayStyle BackColor="#CCCCCC" />
                 <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                 <OtherMonthDayStyle ForeColor="#999999" />
                 <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                 <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                 <TodayDayStyle BackColor="#999999" ForeColor="White" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="white"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td class="col1">&nbsp;</td>
                    <td class="coll2">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    
                </tr>
                <tr>
                    <td class="col1">Ending Date</td>
                    <td class="coll2">
                        <asp:TextBox ID="TextBox5" runat="server" Style="margin-left:4rem;" ReadOnly="true" Font-Size="Large" Height="40px"  ToolTip="Enter valid ending date"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton2" Style="margin-bottom:-1rem;" OnClick="ImageButton2_Click" CausesValidation="false" runat="server" ImageUrl="~/NSS/img/planner.png" Height="50" Width="50" />
                        <asp:Calendar ID="Calendar2" Style="position:absolute" runat="server" OnDayRender="Calendar2_DayRender" OnSelectionChanged="Calendar2_SelectionChanged" VisibleDate="2022-12-16" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="FullMonth" Width="330px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                 <DayStyle BackColor="#CCCCCC" />
                 <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                 <OtherMonthDayStyle ForeColor="#999999" />
                 <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                 <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                 <TodayDayStyle BackColor="#999999" ForeColor="White" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="white"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td class="col1">&nbsp;</td>
                    <td class="coll2">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    
                </tr>
                <tr>
                    <td class="col1">Duration</td>
                    <td class="coll2">
                        <asp:TextBox ID="TextBox6" runat="server" ReadOnly="true" Font-Size="Large" Height="40px"  ToolTip="Ex:3 days">  </asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="white"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="col1">&nbsp;</td>
                    <td class="coll2">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                
                <tr>
                    <td class="col1">Location</td>
                    <td class="coll2">
                        <asp:TextBox ID="TextBox7" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="white"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="col1">&nbsp;</td>
                    <td class="coll2">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6"  ValidationExpression="[a-zA-Z][a-zA-Z ]+" runat="server" ControlToValidate="TextBox7" ErrorMessage="INVALID ENTRY!" ForeColor="white"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
               
                <tr>
                    <td class="col1">Photo</td>
                    <td class="coll2">
                        <asp:FileUpload ID="FileUpload1" runat="server" Font-Size="Large" Height="40px" ToolTip="Enter valid photo" />
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*" ForeColor="white"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="coll2">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.jpg|.JPG|.JPEG|.PNG)$" runat="server" ControlToValidate="FileUpload1" ErrorMessage="INVALID FORMAT! only jpg, png types allowed" ForeColor="white"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                
                <tr rowspan="3">
                    <td class="button" colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="CLEAR" OnClick="Button2_Click"  />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
                </center>
        </div>
            
            
    </form>
</body>
</html>
