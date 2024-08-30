<%@ Page Language="C#" AutoEventWireup="true" CodeFile="calevents.aspx.cs" Inherits="NSS_eventphotos" %>

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
            background-color:lightpink;
        }
          body {
  min-height: 100vh;
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
            text-align:left;
            font-size:x-large;
            font-weight:700;

        }
        .coll2 td{
            margin-left:5rem;
            width:20%;

        }
        table {
            /*border:solid;*/
            

        }
        #Button1{
            font-size:x-large;
           background-color:red;
           border-style:none;
           color:white;
           border-radius:10px;
           padding:5px;

           margin-right:2rem;
       
       }
       #Button2{
           font-size:x-large;
           background-color:forestgreen;
           border-style:none;
           color:white;
           border-radius:10px;
           padding:5px;
       }
         </style>
    

</head>
<body>
    
    <div id="content">


    
<form id="form1" runat="server">

            <nav class="navbar navbar-expand-lg " style="background-color:#32064A;border-radius:10px">
                <div class="container-fluid">

                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

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


    
        <div class="container"style="margin-top:6rem;"> 
    <h1 align="center">ADD CALENDAR OF EVENTS</h1>
        <center>
            <table align="center" class="container1" >
            <tr hidden="hidden">
                <td class="coll">cevent id</td>
                <td class="coll2"align="center">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" Height="40px" ></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ></asp:RequiredFieldValidator>
                </td>
            </tr>
                 <tr>
                <td class="coll">Event Name</td>
                <td class="coll2" align="center">
                    <asp:TextBox ID="TextBox2"  runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="coll">&nbsp;</td>
                <td class="coll2" align="center">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ErrorMessage="INVALID FORMAT!" ControlToValidate="TextBox2" Font-Size="Medium" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'/-@&amp;amp;#,.\s]{2,100}$"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
                <tr>
                <td class="coll">Description</td>
                <td class="coll2" align="center">
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="coll">&nbsp;</td>
                <td class="coll2" align="center">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ErrorMessage="INVALID FORMAT!" ControlToValidate="TextBox3" Font-Size="Medium" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'/-@&amp;amp;#,.\s]{2,100}$"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
                 <tr>
                <td class="coll"> Date</td>
                <td class="coll2" align="center">
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Large" Height="40px" placeholder=" dd/mm/yyyy "></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr><td>
                    &nbsp;</td></tr>
                 <tr>
                <td class="button" colspan="3" ">
       <center>
       
       <asp:Button ID="Button2" runat="server" Text="SUBMIT" OnClick="Button2_Click" />
      
                    <asp:Label ID="Label1" runat="server"></asp:Label>
           <br /><br />
      </center>
                </td>
            </tr>

       
    </table>
    </center>

    </div>



    </form>
        </div>
</body>
</html>
