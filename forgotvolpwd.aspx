<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotvolpwd.aspx.cs" Inherits="NSS_forgotvolpwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
     @media screen {
            .table {
                min-height: 100%;
                min-width: fit-content;
            }
        }
.hidden {
    display: none;
    width: 100%;
    
  }
        table{
            position:absolute;
            top:10rem;
            left:30%;
            border-style:none;
            border-radius:30px;
            width:40%;
           background-image: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            box-shadow:rgba(0,0,0,0.5) 10px 10px 10px 10px;
        }
        td{


            width:max-content;
            padding:10px;
            font-size:larger;
        }
        #TextBox1,#TextBox2{
            margin-right:7rem;
            border-radius:10px;
            height:1.5rem;
                box-shadow:rgba(0,0,0,0.5) 2px 2px 2px 2px;
        }
        #Label3,#Label4{
            margin-left:3rem;
        }
        #Button1,#Button2{
            padding:5px;
            border-style:none;
            color:white;
            border-radius:5px;
            font-size:large;
        }
        #Button1{
            background-color:forestgreen;
            box-shadow:rgba(0,0,0,0.5) 5px 5px 5px 5px;
            margin-right:2rem;
        }
        #Button1:hover{
            background-color:green;
            transition:0.3s ease;
            
        }
        #Button2{
            background-color:red;
            box-shadow:rgba(0,0,0,0.5) 5px 5px 5px 5px;
        }
        #Button2:hover{
            background-color:orangered;
            transition:0.3s ease;
            
        }
        </style>
</head>
<body>
    <!-- Page Content  -->
        <%--<div id="content">

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
            </nav>--%>

            
   <div>
       </div>
    <form id="form1" runat="server">
        <div>
            <center>
            <table class="table">
                <tr>
                    <td id="heading" colspan="3"><h1 align="center">CREATE  PASSWORD</h1></td>
                </tr>
                <tr>
                    <td class="head" >
                        <asp:Label ID="Label3" runat="server" Text="NEW PASSWORD"></asp:Label>
                    </td>
                    <td class="txt">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="head" >
                        <asp:Label ID="Label4" runat="server" Text="CONFIRM PASSWORD"></asp:Label>
                    </td>
                    <td class="txt">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <center>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SUBMIT" />
                        <asp:Button ID="Button2" runat="server" Text="CLEAR" />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </center>
                        <br /><br />
                    </td>
                </tr>
            </table>
                </center>
      
        <a href="Deputylogin.aspx" style="text-decoration:none;position:absolute;top:0rem;"><img src="Icons/cancel.png" height="50" width="50" style="margin-top:1rem;"/></a>
                
        </div>
    </form>
</body>
</html>
