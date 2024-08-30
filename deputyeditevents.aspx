<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deputyeditevents.aspx.cs" Inherits="NSS_deputyeditevents" %>

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
        #DetailsView1 {
            font-size: larger;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
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

                <nav class="navbar navbar-expand-lg " style="background-color: #32064A; border-radius: 10px">
                    <div class="container-fluid">

                        <button type="button" id="sidebarCollapse" style="background-color: #32064A; border-style: none;" class="btn btn-info">
                            <i class="fas fa-align-left"></i>
                            <span>
                                <img src="img/menu.png" height="50" width="80" />MENU</span>
                        </button>
                        <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fas fa-align-justify"></i>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="nav navbar-nav ml-auto">
                                <li class="nav-item active">
                                    <a class="nav-link" href="deputyhome.aspx" style="color: white"><u>HOME</u></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="deputylogin.aspx" style="color: white"><u>LOGOUT</u></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>


                <%--<div>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
                </div>--%>
                <center>

                    <h1>EDIT EVENT DETAILS</h1>






                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="event_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" AllowPaging="True" EnableSortingAndPagingCallbacks="True" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" BorderStyle="None">
                        <Columns>
                            <asp:BoundField DataField="event_id" HeaderText="SL NO" ReadOnly="True" SortExpression="event_id" />
                            <asp:BoundField DataField="event_name" HeaderText="EVENT NAME" SortExpression="event_name" />
                            <asp:BoundField DataField="event_desc" HeaderText="DESCRIPTION" SortExpression="event_desc" />
                            <asp:BoundField DataField="event_actualdate" HeaderText="ACTUAL DATE" SortExpression="event_actualdate" />
                            <asp:BoundField DataField="event_conductdate" HeaderText="CONDUCTING DATE" SortExpression="event_conductdate" />
                            <asp:BoundField DataField="event_time" HeaderText="TIME" SortExpression="event_time" />
                           <%-- <asp:BoundField DataField="" HeaderText="" SortExpression="" />
                            <%--<asp:ImageField DataImageUrlField="value" ControlStyle-Height="100" ControlStyle-Width="100" HeaderText="Event Poster" />--%>
                            <%--<asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("FilePath") %>' Height="100"
                                        Width="100" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </EditItemTemplate>
                            </asp:TemplateField>
                           <asp:CommandField  ShowEditButton="True" />
                            --%>
                            <%--<asp:BoundField DataField="event_permission" HeaderText="event_permission" SortExpression="event_permission" />--%>
                           <%-- <asp:BoundField DataField="" HeaderText="" SortExpression="" />--%>

                        </Columns>
                        <Columns>
                             <asp:CommandField ShowEditButton="true" ButtonType="Button" EditText="Edit" UpdateText="Update" CancelText="Cancel" />
                            <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" ForeColor="White" Font-Bold="True" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>


                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString= "Data Source=DESKTOP-96RDMR9;Initial Catalog=master;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [event]" DeleteCommand="DELETE FROM [event] WHERE [event_id] = @event_id" InsertCommand="INSERT INTO [event] ([event_id], [event_name], [event_desc], [event_actualdate],[event_conductdate] [event_time]) VALUES (@event_id, @event_name, @event_desc, @event_actualdate,@event_conductdate, @event_time)" UpdateCommand="UPDATE [event] SET [event_name] = @event_name, [event_desc] = @event_desc, [event_actualdate] = @event_actualdate,[event_conductdate] = @event_conductdate, [event_time] = @event_time WHERE [event_id] = @event_id">
                        <DeleteParameters>
                            <asp:Parameter Name="event_id" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="event_id" Type="String" />
                            <asp:Parameter Name="event_name" Type="String" />
                            <asp:Parameter Name="event_desc" Type="String" />
                            <asp:Parameter Name="event_actualdate" Type="String" />
                            <asp:Parameter Name="event_conductdate" Type="String" />
                            <asp:Parameter Name="event_time" Type="String" />
                            <%--<asp:Parameter Name="" Type="String" />
                            <%--<asp:Parameter Name="event_permission" Type="String" />--%>
                            <asp:Parameter Name="" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="event_id" Type="String" />
                            <asp:Parameter Name="event_name" Type="String" />
                            <asp:Parameter Name="event_desc" Type="String" />
                            <asp:Parameter Name="event_actualdate" Type="String" />
                            <asp:Parameter Name="event_conductdate" Type="String" />
                            <asp:Parameter Name="event_time" Type="String" />
                            <%--<asp:Parameter Name="" Type="String" />--%>
                           <%-- <asp:Parameter Name="event_permission" Type="String" />
                            <asp:Parameter Name="" Type="String" />
                            <%--<asp:Parameter Name="event_id" Type="String" />--%>
                        </UpdateParameters>
                    </asp:SqlDataSource>
            </div>
        </div>

    </form>
</body>
</html>

