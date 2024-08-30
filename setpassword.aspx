<%@ Page Language="C#" AutoEventWireup="true" CodeFile="setpassword.aspx.cs" Inherits="NSS_setpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="css/StyleSheet.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
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
        div h1{
            text-align:center;
            margin-top:-39rem;
          /* width:fit-content;*/
        }
        table {
            
            background-color:antiquewhite;
            border-style:none;
            border-radius:15px;
            box-shadow:rgba(0,0,0,0.5) 5px 5px 5px 5px;
        }
        td{
            
            padding:10px;
            font-size:larger;
            font-weight:500;
        }

        #TextBox1{
            text-align:center;
           border-style:ridge;
           border-radius:10px;
        }
        
        #TextBox2{
            text-align:center;
           border-style:ridge;
           border-radius:10px;
        }
        #Button1{
             border-style:none;
            padding:5px;
           border-radius:10px;
           color:#fff;
           background-color:forestgreen;
           
            
        }
        #Button2{
            border-style:none;
            border-radius:10px;
            padding:5px;
            color:#fff;
            background-color:orangered;
            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div id="content">

            <nav class="navbar navbar-expand-lg " style="background-color:teal;border-radius:10px">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ">
                            <li class="nav-item active">
                                <a class="nav-link" href="index.aspx" style="color:white"><strong>HOME</strong></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

        </div>
        <div>
             <div><h1>CREATE PASSWORD</h1></div>
            <center>
               
            <table >
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" ></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                            <asp:Label ID="Label5" runat="server" Text="Note : Kindly create and set password only once initially" ></asp:Label>
                            </td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td>
                        <center>
                            <asp:Label ID="Label4" runat="server" ></asp:Label>
                            </center>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Create Password</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,10}$" ControlToValidate="TextBox1" ErrorMessage="INVALID PASSWORD!Minimum eight and maximum 10 characters, at least one uppercase letter, one lowercase letter, one number and one special character" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Confirm Password</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,10}$" ControlToValidate="TextBox2" ErrorMessage="INVALID PASSWORD!Minimum eight and maximum 10 characters, at least one uppercase letter, one lowercase letter, one number and one special character" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    
                    <td class="auto-style3" colspan="4">
                        <center>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SUBMIT" Width="100px" />
                        <asp:Button ID="Button2" runat="server" Text="CLEAR" />
                        </center>
                    </td>

                </tr>
                <tr>
                    
                    <td class="auto-style3" colspan="4">
                        &nbsp;</td>

                </tr>
            </table>
                </center>
        </div>
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </form>
</body>
</html>    
