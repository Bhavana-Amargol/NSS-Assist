<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deputyeditcamps.aspx.cs" Inherits="NSS_deputyeditcamps" %>

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
        #GridView1{
            font-size:larger;
            margin-top:4rem;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        &nbsp;
        <div id="content">

            <nav class="navbar navbar-expand-lg md-4 " style="background-color:#32064A;border-radius:10px">
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
                                <a class="nav-link" href="deputyhome.aspx" style="color:white"><u>HOME</u></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="deputylogin.aspx"style="color:white"><u>LOGOUT</u></a>
                            </li>
                         </ul>
                    </div>
                </div>
            </nav>

            
   </div>

        <div>
            <center>
            <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="camp_id" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" Width="1259px" AllowSorting="True" BorderStyle="None">
                <Columns>
                    <asp:BoundField DataField="camp_id" HeaderText="SL NO" SortExpression="camp_id" ReadOnly="true" />
                    <asp:BoundField DataField="camp_name" HeaderText="CAMP NAME" SortExpression="camp_name" />
                    <asp:BoundField DataField="camp_desc" HeaderText="DESCRIPTION" SortExpression="camp_desc" />
                    <asp:BoundField DataField="camp_startingdate" HeaderText="STARTING DATE" SortExpression="camp_startingdate" />
                    <asp:BoundField DataField="camp_endingdate" HeaderText="ENDING DATE" SortExpression="camp_endingdate" />
                    <asp:BoundField DataField="camp_duration" HeaderText="DURATION" SortExpression="camp_duration" />
                    <asp:BoundField DataField="camp_location" HeaderText="LOCATION" SortExpression="camp_location" />
                    <%--<asp:BoundField DataField="camp_photo" HeaderText="PHOTO" SortExpression="camp_photo" />--%>
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
                </center>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [camp] " DeleteCommand="DELETE FROM [camp] WHERE [camp_id] = @camp_id" InsertCommand="INSERT INTO [camp] ([camp_id], [camp_name], [camp_desc], [camp_startingdate],[camp_endingdate] [camp_duration], [camp_location], [camp_photo]) VALUES (@camp_id, @camp_name, @camp_desc, @camp_startingdate,@camp_endingdate,@camp_duration, @camp_location, @camp_photo)" UpdateCommand="UPDATE [camp] SET [camp_name] = @camp_name, [camp_desc] = @camp_desc, [camp_startingdate] = @camp_startingdate,[camp_endingdate] = @camp_endingdate, [camp_duration] = @camp_duration, [camp_location] = @camp_location, [camp_photo] = @camp_photo  WHERE [camp_id] = @camp_id">
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
               <%-- <asp:Parameter Name="camp_photo" Type="String" />--%>
                <%--<asp:Parameter Name="event_invitation" Type="String" />--%>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="camp_id" Type="String" />
                <asp:Parameter Name="camp_name" Type="String" />
                <asp:Parameter Name="camp_desc" Type="String" />
                <asp:Parameter Name="camp_startingdate" Type="String" />
                 <asp:Parameter Name="camp_endingdate" Type="String" />
                <asp:Parameter Name="camp_duration" Type="String" />
                <asp:Parameter Name="camp_location" Type="String" />
                <%--<asp:Parameter Name="camp_photo" Type="String" />--%>
               <%-- <asp:Parameter Name="event_invitation" Type="String" />--%>
                <%--<asp:Parameter Name="camp_id" Type="String" />--%>
            </UpdateParameters>
           </asp:SqlDataSource>     
                </div>

    </form>
</body>
</html>

