<%@ Page Language="C#" AutoEventWireup="true" CodeFile="unitvolevents.aspx.cs" Inherits="NSS_unitvolevents" %>

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
    
</head>
<body>
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
                                <a class="nav-link" href="unitleaderhome.aspx" style="color:white"><strong>HOME</strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="unitleaderlogin.aspx"style="color:white"><strong>LOGOUT</strong></a>
                            </li>
                            

                        </ul>
                    </div>
                </div>
            </nav>
    <form id="form1" runat="server">
        <div align="center">           
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="EXPORT AS EXCEL" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="EXPORT AS DOCUMENT" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="EXPORT AS PDF" />
            </div>  
            <br />
            <div>
                <div style="margin-left:25rem;background-color:antiquewhite;width:fit-content;padding:20px;border-radius:10px;">
                
                    
                
                <asp:Label ID="Label3" runat="server" Style="margin-left:3rem;" Text="SORT BY EVENT DATE"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/NSS/img/calendar.png" Height="30" Width="30" CausesValidation= "false" OnClick="ImageButton1_Click" />
            <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>

            <asp:Button ID="Button4" runat="server" Text="SEARCH" OnClick="Button4_Click" />
            <asp:Button ID="Button5" runat="server" Text="CLEAR" OnClick="Button5_Click" />
                    </div>
                </div>
            <br />
            <div style="margin-left:10rem;margin-right:auto;">
                
            <asp:Label ID="Label4" runat="server" style="margin-left:35rem;"></asp:Label>
                <br /><br /><br />
            <asp:GridView ID="GridView1" runat="server" CellPadding="3" AutoGenerateColumns="False" Height="464px" Width="1082px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" GridLines="None">
            <Columns>
                <asp:BoundField DataField="event_id" HeaderText="EVENT ID" />
                <asp:BoundField DataField="event_name" HeaderText="EVENT NAME" />
                <asp:BoundField DataField="event_desc" HeaderText="EVENT DESCRIPTION" />
                <asp:BoundField DataField="event_actualdate" HeaderText=" ACTUAL DATE" />
                <asp:BoundField DataField="event_conductdate" HeaderText="CONDUCT DATE" />
                <asp:BoundField DataField="event_time" HeaderText="TIME" />
                <%--<asp:BoundField DataField="event_poster" HeaderText="Event Poster" />
                <asp:BoundField DataField="event_invitation" HeaderText="Event Invitation" />--%>

                <asp:TemplateField HeaderText="Poster">
                    <ItemTemplate>
                        <img src="Uploads/Event Poster/<%#Eval("event_poster")%>" height="100" width="100" />
                    </ItemTemplate>
                </asp:TemplateField>
                
                    <%--<asp:TemplateField HeaderText="Invitation">
                    <ItemTemplate>
                        <img src="Uploads/Event Invitation/<%#Eval("event_invitation")%>" height="100" width="100" />
                    </ItemTemplate>
                </asp:TemplateField>--%>
               
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>

        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
            
           
            
        </div>
        </form>
    </div>
       
    </body>

</html>
