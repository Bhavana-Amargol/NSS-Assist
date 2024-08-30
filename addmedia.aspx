<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addmedia.aspx.cs" Inherits="NSS_addmedia" %>

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
        .table{
            background-color:darkslategray;
            color:#fff;
            font-size:x-large;
            border-radius:20px;
            box-shadow:rgba(0,0,0,0.5) 10px 10px 10px 10px;  
            width:max-content;
        }
        @media screen {
            .table {
                min-height: 100%;
                min-width: fit-content;
            }
        }
        #DropDownList1{
            padding:3px;
            border-radius:10px;
        }
        #Button1{
            margin-left:43%;
            padding:10px;
            background-color:forestgreen;
            border:none;
            border-radius:10px;
            color:#fff;
            
        }
        #table2{
            background-color:bisque;
            color:black;
            font-size:x-large;
            border-radius:20px;
            box-shadow:rgba(0,0,0,0.5) 10px 10px 10px 10px;  
            
            
        }
        #table2 td{
            padding:10px;
        }
        #table3{
            background-color:bisque;
            color:black;
            font-size:x-large;
            border-radius:20px;
            box-shadow:rgba(0,0,0,0.5) 10px 10px 10px 10px;  
            
            
        }
        #table3 td{
            padding:10px;
        }

        #DropDownList2,#DropDownList3,#DropDownList4,#DropDownList5{
            padding:3px;
            border-radius:10px;
        }
        
        #Button1{
            margin-left:43%;
            padding:10px;
            background-color:forestgreen;
            border:none;
            border-radius:10px;
            color:#fff;
        }
        #Button2{
            margin-left:38%;
            padding:10px;
            background-color:red;
            border:none;
            border-radius:10px;
            color:#fff;
        }
        #Button3{
            padding:10px;
            background-color:forestgreen;
            border:none;
            border-radius:10px;
            color:#fff;
        }
        #Button4{
            margin-left:38%;
            padding:10px;
            background-color:red;
            border:none;
            border-radius:10px;
            color:#fff;
        }
        #Button5{
            padding:10px;
            background-color:forestgreen;
            border:none;
            border-radius:10px;
            color:#fff;
        }


         #LinkButton1,#LinkButton2,#LinkButton3,#LinkButton4{
            background-color:brown;
            color:white;
            text-decoration:none;
            border-radius:10px;
            padding:7px;
        }
        
        #TextBox1,#TextBox2,#TextBox3,#TextBox4{
            border-radius:10px;
        }
        



    *,
  *::before,
  *::after {
    text-shadow: none !important;
    box-shadow: none !important;
  }
  
*,
*::before,
*::after {
  box-sizing: border-box;
}

        .auto-style1 {
            font-size: inherit;
            height: 40px;
            width: 286px;
            font-family: inherit;
            line-height: inherit;
            overflow: visible;
            margin: 0;
        }
        



    </style>
</head>
<body>
    <div class="wrapper" >
        <!-- Sidebar  -->
        <%--<nav id="sidebar" style="background-color:#32064A" >
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
         <div class="container">
            <center><h1>MEDIA</h1></center>
            <center>
            <table class="table" id="table1" runat="server">
                <tr hidden="hidden">
                    <td class="col1" colspan="5">
                        <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox>
                        <asp:TextBox ID="TextBox6" runat="server" Visible="False" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="col1">
                        <asp:Label ID="Label1" runat="server" Text="Media for"></asp:Label>
                    </td>
                    <td class="labels">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="false">
                            <asp:ListItem>Camps</asp:ListItem>
                            <asp:ListItem>Events</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td class="col2">&nbsp;</td>
                    <td class="col2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="getdata" colspan="4">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get Data" />
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
             </table>

             <table class="auto-style1" id="table2" runat="server" visible="false">
                <tr>
                    <td class="col1">Camp Name</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList2" runat="server" autopostback="true" >
                        </asp:DropDownList>
                    </td>
                    <td class="linkbutton">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="false" Text="GetData"></asp:LinkButton>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="col1">Camp Date</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList3" runat="server" autopostback="true" >
                        </asp:DropDownList>
                    </td>
                    <td class="linkbutton">
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CausesValidation="false" Text="GetData"></asp:LinkButton>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="col1">Media</td>
                    <td class="auto-style5">
                <asp:FileUpload ID="FileUpload2" runat="server" Font-Size="Large" Height="40px"  Width="237px" />
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="linkbutton">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="([^\s]+(\.(?i)(jpg|JPG|png|PNG|JPEG|jpeg))$)" runat="server" ControlToValidate="FileUpload2" ErrorMessage="INVALID ENTRY!" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="col1">Total Volunteers Participated</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server" Height="36px"></asp:TextBox>
                    </td>
                    <td class="linkbutton">&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationExpression="\b([1-9]|[12][0-9]|5[01])\b" runat="server" ControlToValidate="TextBox1" ErrorMessage="INVALID FORMAT!" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="col1" colspan="5">
                        <asp:Button ID="Button2" runat="server" Text="CLEAR" />
                        <asp:Button ID="Button3" runat="server" BackColor="#009933" OnClick="Button3_Click" Text="SUBMIT" />
                    </td>
                </tr>
                </table>

             <table class="auto-style1" id="table3" runat="server"  visible="false">
                <tr>
                    <td class="col1">Event Name</td>
                    <td class="labels">
                        <asp:DropDownList ID="DropDownList4" runat="server" autopostback="true">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style3">
                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click1" CausesValidation="False" Text="GETDATA"></asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="col1">Event Conductdate</td>
                    <td class="labels">
                        <asp:DropDownList ID="DropDownList5" runat="server" autopostback="true">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style3">
                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" CausesValidation="False" Text="GETDATA"> </asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="col1">Media</td>
                    <td class="labels">
                <asp:FileUpload ID="FileUpload3" runat="server" Font-Size="Large" Height="40px" CssClass="auto-style7" Width="229px" />
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ValidationExpression="([^\s]+(\.(?i)(jpg|JPG|png|PNG|JPEG|jpeg))$)" runat="server" ControlToValidate="FileUpload3" ErrorMessage="INVALID FORMAT!" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="col1">Total Volunteers Participated</td>
                    <td class="labels">
                        <asp:TextBox ID="TextBox2" runat="server" Height="37px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ValidationExpression="\b([1-9]|[12][0-9]|5[01])\b"  runat="server" ControlToValidate="TextBox2" ErrorMessage="INVALID FORMAT!" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="col1" colspan="5">
                        <asp:Button ID="Button4" runat="server" Text="CLEAR" />
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="SUBMIT" />
                    </td>
                </tr>
                </table>
                </center>
        </div>
    </form>
</body>
</html>
