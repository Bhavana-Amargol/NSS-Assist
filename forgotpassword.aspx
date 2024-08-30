<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="NSS_forgotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
   @media screen {
            .container {
                min-height: 100%;
                min-width: fit-content;
            }
        }
.hidden {
    display: none;
    width: 100%;
    
  }   table{
            position:absolute;
            top:10rem;
            left:30%;
            border-style:none;
            border-radius:30px;
            width:40%;
           background-color: #DCD9D4;
 background-image: linear-gradient(to bottom, rgba(255,255,255,0.50) 0%, rgba(0,0,0,0.50) 100%), radial-gradient(at 50% 0%, rgba(255,255,255,0.10) 0%, rgba(0,0,0,0.50) 50%);
 background-blend-mode: soft-light,screen;
            box-shadow:rgba(0,0,0,0.5) 10px 10px 10px 10px;
        }
        td{


            width:max-content;
            padding:10px;
            font-size:larger;
        }
        #TextBox1,#TextBox2,#TextBox3{
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
        #Button4{
             border-style:none;
             padding-top:3px;
            padding:10px;
           border-radius:10px;
           color:#fff;
           font-size:xx-large;
           background-color:forestgreen;
           margin-left:1rem;
           margin-top:3rem;
           box-shadow:rgba(0,0,0,0.5) 5px 5px 5px 5px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="3">
                        <h1 align="center">Create New Password</h1>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter Your Email Id</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter New Password</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Confirm Password</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <center>
                        <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click1" />
                        <asp:Button ID="Button2" runat="server" Text="CLEAR" />
                            </center>
                        <br /><br /><br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

             <a href="volunteerlogin.aspx" style="text-decoration:none;position:absolute;top:0rem;"><img src="Icons/cancel.png" height="50" width="50" style="margin-top:1rem;"/></a>
            
             
        </div>
    </form>
</body>
</html>
