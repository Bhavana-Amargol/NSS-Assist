<%@ Page Language="C#" AutoEventWireup="true" CodeFile="appstatus.aspx.cs" Inherits="NSS_appstatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Application status</title>
     <link href="css/style.css" rel="stylesheet"/>
     <link href="css/StyleSheet.css" rel="stylesheet"/>
    <style type="text/css">
       
        .mobile{
            border:3px solid;
           
        }


        table{
            border:none;
            
        }
        
        td{
            
            padding:20px;
            font-size:large;
        }

        #TextBox1{
            text-align:center;
           border-style:ridge;
           border-radius:10px;
        }

        .status{
            text-align:center;
            font-weight:800;
            
        }
        .status td{
            font-size:x-large;
        }
        #Label3 td{
            text-align:center;
        }
        #Label2 td{
            text-align:center;
        }
        .status1{
            text-align:center;
           
            
        }
        .status2{
            text-align:center;
            
            
        }
        .link1{
            text-align:center;
            
            
        }
        .button {
            padding:10px;
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
    </style>
</head>
<body>
    <form id="form1" runat="server" >

        <div id="content">

            <nav class="navbar navbar-expand-lg " style="background-color:teal;border-radius:10px">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav">
                            <li class="nav-item active">
                                <a class="nav-link" href="index.aspx" style="color:white"><strong>HOME</strong></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>    
        </div>

    <div>
     <center style="margin-top:-32rem;"><h1>CHECK YOUR APPLICATION STATUS
         </h1></center>  
        </div>
         <div>
             <center>
             <table >
                 <tr class="mobile" >
                     <td class="auto-style2" >MOBILE NUMBER GIVEN WHILE REGISTERATION</td>
                     <td class="auto-style3">
                         <asp:TextBox ID="TextBox1" runat="server" Width="215px"></asp:TextBox>
                     </td>
                     <td class="auto-style4">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                     <td class="auto-style7">
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="^[6-9]\d{9}$" runat="server" ControlToValidate="TextBox1" ErrorMessage="INVALID ENTRY!" ForeColor="Red"></asp:RegularExpressionValidator>
                     </td>
                 </tr>
                 <tr class="status">
                     <td colspan="4">APPLICATION STATUS</td>
                 </tr>
                 <tr class="status1">
                     <td colspan="4">
                         <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                     </td>
                 </tr>
                 <tr class="status2">
                     <td colspan="4">
                         <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Green"></asp:Label>
                     </td>
                 </tr>
                 <tr class="link1">
                     <td colspan="4">
                         <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue">[HyperLink1]</asp:HyperLink>
                     </td>
                 </tr>
                 <tr>
                     <td colspan="4" class="button">
                         <center>
                       <asp:Button ID="Button1" runat="server" Text="CHECK STATUS" OnClick="Button1_Click"  />
                           
                         <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="CLEAR" />
                          </center>
                     </td>
                 </tr>
             </table>
                 </center>
             <br />
             <asp:Label ID="Label1" runat="server"></asp:Label>
           
        </div>
        
</form>
 </body>  

</html>
