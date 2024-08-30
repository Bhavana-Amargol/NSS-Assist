<%@ Page Language="C#" AutoEventWireup="true" CodeFile="meeting.aspx.cs" Inherits="NSS_meeting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>meeting page</title>
    <%--<link href="css/event.css" rel="stylesheet" />--%>
    <%--<link href="css/StyleSheet.css" rel="stylesheet" />--%>
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
     .container{
            
            width:50%;
            min-height:100%;
            border-style:none;
            box-shadow:rgba(0,0,0,0.5) 10px 10px 10px 10px;
             background-color:antiquewhite;
        }
        body {
  min-height: 100vh;
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
         
        /* table{
             box-shadow:rgba(0,0,0,0.5) 10px 10px 10px 10px;
             border-radius:25px;
            
         }*/

         #Button2{
            font-size:x-large;
           background-color:forestgreen;
           border-style:none;
           color:white;
           border-radius:10px;
           padding:5px;

           margin-right:2rem;
         }

         #Button3{
            font-size:x-large;
           background-color:red;
           border-style:none;
           color:white;
           border-radius:10px;
           padding:5px;

           margin-right:2rem;
       
       }
         .auto-style1 {
             text-align: left;
             font-size: x-large;
             font-weight: 700;
             width: 325px;
         }
         .auto-style2 {
             width: 332px;
         }
         .auto-style3 {
             text-align: left;
             font-size: x-large;
             font-weight: 700;
             width: 332px;
         }


         </style>


    </head>
<body>
     <div id="content">

            <nav class="navbar navbar-expand-lg fixed-top  mt-3 " style="background-color:#32064A;border-radius:10px;width:99.5%;margin-left:3px" onload="Page_Load"">
                <div class="container-fluid">
                   <%--<button type="button" id="sidebarCollapse" style="background-color:#32064A;border-style:none;"  class="btn btn-info">
                      <i class="fas fa-align-left" ></i>
                        <span ><img src="img/menu.png" height="50" width="80"/>MENU</span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>--%>

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
        </div>

        
            
    <form id="form1" runat="server">
    <div class="container"style="margin-top:6rem;" >
    <center>
            <h1>ADD MEETING DETAILS</h1>
        <table align="center"  >
            <tr hidden="hidden">
                <td class="auto-style3">Meeting Id</td>
                <td class="coll2">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"  ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Date</td>
                <td class="coll2">
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1"  Style="margin-bottom:-0.7rem;" ImageUrl="~/NSS/img/calendar.png"  Height="40" Width="40" runat="server"  OnClick="ImageButton1_Click" CausesValidation="False" />
                    <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" VisibleDate="2022-12-08" BackColor="White" BorderColor="#3366CC" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" CssClass="auto-style1" CellPadding="1" DayNameFormat="Shortest" BorderWidth="1px">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                 <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                 <OtherMonthDayStyle ForeColor="#999999" />
                 <SelectedDayStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                 <TitleStyle BackColor="#003399" Font-Bold="True" BorderColor="#3366CC" BorderWidth="1px" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                 <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="white"></asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="coll2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style3">Start Time</td>
                <td class="coll2">
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="coll2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationExpression="(([01]?[0-9]):([0-5][0-9]) ([AaPp][Mm]))"  runat="server" ControlToValidate="TextBox3" ErrorMessage="INVALID FORMAT! EX:10:00 AM/PM" ForeColor="white"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">End Time</td>
                <td class="coll2">
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="coll2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ValidationExpression="(([01]?[0-9]):([0-5][0-9]) ([AaPp][Mm]))"  runat="server" ControlToValidate="TextBox4" ErrorMessage="INVALID FORMAT! EX:10:00 AM/PM" ForeColor="white"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Venue</td>
                <td class="coll2">
                    <asp:TextBox ID="TextBox5" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="coll2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ValidationExpression="[a-zA-Z][a-zA-Z0-9 ]+"  runat="server" ControlToValidate="TextBox5" ErrorMessage="INVALID ENTRY!" ForeColor="white"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
                </tr>
            
             <tr>
            <td class="auto-style3">Mode</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="193px">
                    <asp:ListItem Selected="True" Hidden Value="0">Choose Mode</asp:ListItem>
                    <asp:ListItem Value="Online Mode">Online</asp:ListItem>
                    <asp:ListItem Value="Offline Mode">Offline</asp:ListItem>
                    <asp:ListItem ></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
           
        </tr>
            <tr><td>
                &nbsp;</td></tr>
            <%--<tr>
                <td class="auto-style3">Enter Meet code if Online</td>
                <td class="coll2">
                    <asp:TextBox ID="TextBox7" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                </tr>
            <tr><td class="auto-style2">&nbsp;</td></tr>--%>
            <tr>
                <td class="auto-style3">Topics Covered</td>
                <td class="coll2">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Theory" Font-Bold="True" Font-Size="Large" />
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="Practical" Font-Bold="True" Font-Size="Large" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="coll2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Refreshments</td>
                <td class="coll2">
                    <asp:TextBox ID="TextBox6" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="coll2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ValidationExpression="[a-zA-Z][a-zA-Z ]+"  runat="server" ControlToValidate="TextBox6" ErrorMessage="INVALID ENTRY!" ForeColor="white"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="SUBMIT" OnClick="Button2_Click" />
                     <asp:Button ID="Button3" runat="server" Text="CLEAR" OnClick="Button3_Click" />
                    <br /><br /><br />
                    
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                
            </tr>
        </table>
        </center>
        </div>
    </form>
</body>
</html>
