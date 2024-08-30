<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editcamps.aspx.cs" Inherits="NSS_editcamps" %>

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
                                    <a class="nav-link" href="adminhome.aspx" style="color: white"><u>HOME</u></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="adminlogin.aspx" style="color: white"><u>LOGOUT</u></a>
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

                    <h1>EDIT CAMP DETAILS</h1>
                    <div align="center">

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="camp_id" DataSourceID="SqlDataSource1" Width="1102px" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                            <Columns>
                                <asp:BoundField DataField="camp_id" HeaderText="SL NO" SortExpression="camp_id" />
                                <asp:BoundField DataField="camp_name" HeaderText="CAMP NAME" SortExpression="camp_name" />
                                <asp:BoundField DataField="camp_desc" HeaderText="DESCRIPTION" SortExpression="camp_desc" />
                                <asp:BoundField DataField="camp_startingdate" HeaderText="STARTING DATE" SortExpression="camp_startingdate" />
                                <asp:BoundField DataField="camp_endingdate" HeaderText="ENDING DATE" SortExpression="camp_endingdate" />
                                <asp:BoundField DataField="camp_duration" HeaderText="DURATION" SortExpression="camp_duration" />
                                <asp:BoundField DataField="camp_location" HeaderText="LOCATION" SortExpression="camp_location" />
                                <%--<asp:BoundField DataField="camp_photo" HeaderText="camp_photo" SortExpression="camp_photo" />--%>
                            </Columns>
                            <Columns>
                            <asp:CommandField ShowEditButton="true" ButtonType="Button" EditText="Edit" UpdateText="Update" CancelText="Cancel" />
                            <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                        </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [camp]" DeleteCommand="DELETE FROM [camp] WHERE [camp_id] = @camp_id" InsertCommand="INSERT INTO [even] ([camp_id], [camp_name], [camp_desc], [camp_startingdate],[camp_endingdate][camp_duration] [camp_location]) VALUES (@camp_id, @camp_name, @camp_desc, @camp_startingdate,@camp_endingdate, @camp_duration,@camp_location)" UpdateCommand="UPDATE [camp] SET [camp_name] = @camp_name, [camp_desc] = @camp_desc, [camp_startingdate] = @camp_startingdate,[camp_endingdate] = @camp_endingdate, [camp_duration] = @camp_duration,[camp_location] = @camp_location WHERE [camp_id] = @camp_id">
                            <DeleteParameters>
                            <asp:Parameter Name="camp_id" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="camp_id" Type="String" />
                            <asp:Parameter Name="camp_name" Type="String" />
                            <asp:Parameter Name="camp_desc" Type="String" />
                            <asp:Parameter Name="camp_startingdate" Type="String" />
                            <asp:Parameter Name="camp_endingdate" Type="String" />
                            <asp:Parameter Name="camp_duration" Type="String" />
                            <asp:Parameter Name="camp_location" Type="String" />
                            <%--<asp:Parameter Name="" Type="String" />
                            <%--<asp:Parameter Name="camp_permission" Type="String" />--%>
                            <asp:Parameter Name="" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="camp_id" Type="String" />
                            <asp:Parameter Name="camp_name" Type="String" />
                            <asp:Parameter Name="camp_desc" Type="String" />
                            <asp:Parameter Name="camp_startingdate" Type="String" />
                            <asp:Parameter Name="camp_endingdate" Type="String" />
                            <asp:Parameter Name="camp_duration" Type="String" />
                            <asp:Parameter Name="camp_location" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

                    </div>


</div>
        </div>

    </form>
</body>
</html>