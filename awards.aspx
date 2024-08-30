<%@ Page Language="C#" AutoEventWireup="true" CodeFile="awards.aspx.cs" Inherits="NSS_awards" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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

       
        .auto-style2 {
            width: 217px;
            height: 30px;
            font-size: x-large;
            font-weight: 700;
            padding-block: 15px;
            justify-content: center;
            text-align: center;
        }
        .auto-style3 {
           width: 217px;
            height: 30px;
            font-size:large;
             font-weight:bold;
               padding-block:15px;

        }
        .auto-style4 {
           width: 191px;
            height: 30px;
            font-size:large;
             font-weight:bold;
               padding-block:15px;
               text-align :center;
        }
        .auto-style9 {
            width: 34px;
            height: 30px;
            font-size: large;
            font-weight: bold;
            padding-block: 15px;
        }
        table{
            /*background-color:#f6f163;*/
            box-shadow:rgba(0,0,0,0.5) 10px 10px 10px 10px;     
            border-radius:25px;
        }
        #Button2{
            font-size:x-large;
           background-color:red;
           border-style:none;
           color:white;
           border-radius:10px;
           padding:5px;
           text-align:left;
           margin-right:2rem;
       
       }
       #Button1{
           font-size:x-large;
           background-color:forestgreen;
           border-style:none;
           color:white;
           border-radius:10px;
           padding:5px;
       }

         .auto-style2{
         text-align:center;
            font-size:x-large;
            font-weight:700;
         }

        .auto-style16 {
            width: 34px;
            height: 2px;
            font-size: large;
            font-weight: bold;
            padding-block: 15px;
        }
        .container1{
            
            width:50rem;
            height:40rem;
            border-style:none;
            box-shadow:rgba(0,0,0,0.5) 10px 10px 10px 10px;
            background-color:palegoldenrod;
        }

        @media screen {
            .container1 {
                min-height: 100%;
                min-width: fit-content;
            }
        }
.hidden {
    display: none;
    width: 100%;
    
  }
        .col1{
         
         align-content:center;
         align-items:center;
        }
        

        .auto-style17 {
            width: 217px;
            height: 75px;
            font-size: x-large;
            font-weight: 700;
            padding-block: 15px;
            justify-content: center;
            text-align: center;
        }
        .auto-style18 {
            width: 191px;
            height: 75px;
            font-size: large;
            font-weight: bold;
            padding-block: 15px;
            text-align : center;
        }
        .auto-style19 {
            width: 34px;
            height: 75px;
            font-size: large;
            font-weight: bold;
            padding-block: 15px;
        }
        

    </style>
</head>
<body>
     
          
            <div id="content">
                  &nbsp;
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
                                <a class="nav-link" href="volunteerhome.aspx" style="color:white"><u>HOME</u></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="volunteerlogin.aspx"style="color:white"><u>LOGOUT</u></a>
                            </li>
                         </ul>
                    </div>
                </div>
            </nav>

            </div>
    <br />

    <form id="form1" runat="server">
        <div>
   <center><h1>ADD AWARD DETAILS</h1></center>
        <center>
         </div>
        <table class="container1"  align="center" style="background-image:url();background-repeat:no-repeat;background-size:cover;backdrop-filter:blur(1px);"">
        <tr>
            <td class="auto-style3" hidden="true">Award id</td>
            <td class="auto-style4" hidden="true">
                <asp:TextBox ID="TextBox1" runat="server" Height="37px"></asp:TextBox>
            </td>
            <td class="auto-style9" hidden="true">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Volunteer First Name</td>
            <td class="auto-style4">
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Height="50px" align="center"></asp:TextBox>
                <br />
                <br />
            </td>
            <td class="auto-style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Course</td>
            <td  class="auto-style4">
                <asp:TextBox ID="TextBox7" runat="server" Width="227px" Height="46px"></asp:TextBox>
            </td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td  class="auto-style4">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Course Year</td>
            <td class="auto-style4">
                <br />
                <asp:TextBox ID="TextBox8" runat="server" Height="45px"></asp:TextBox>
            </td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Batch</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox9" runat="server" Height="46px"></asp:TextBox>
                <br />
            </td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Award Name</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox4" runat="server" Height="37px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="INVALID NAME!.Special characters are not allowed" ForeColor="Red" ValidationExpression="^[A-Z\sa-z]+$"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">Award Description</td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox5" runat="server" Height="39px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="INVALID DESCRIPTION!. Special characters are not allowed." ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'/-@&amp;amp;#,.\s]{2,100}$" Font-Size="Small"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Award Received Year</td>
            <td  class="auto-style4">
                <asp:TextBox ID="TextBox6" runat="server" Height="38px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="INVALID ENTRY!" ForeColor="Red" ValidationExpression="^(20)[\d]{2,2}$"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Award Photo</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Height="40px" />
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="FileUpload1" ErrorMessage="INVALID FILE FORMAT!only jp and png" ForeColor="Red" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.jpg|.JPG|.JPEG|.PNG)$"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
           
        <tr>
            <td class="col1" colspan="2" style="margin-left:-2rem;" >
               &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"  />
            <asp:Button ID="Button2" runat="server" Text="Clear" OnClick="Button2_Click" />
            
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
               
        </tr>
           
                </table>

        <p>
           
        </p>
    </form>
</body>
</html>
