<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editcertificate.aspx.cs" Inherits="NSS_editcertificate" %>

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
    <%--<style type="text/css">
        #DetailsView1{
            font-size:larger;
        }
    </style>--%>
</head>
<body> <!-- Page Content  -->
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
                                <a class="nav-link" href="unitleaderhome.aspx" style="color:white"><u>HOME</u></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="unitleaderlogin.aspx"style="color:white"><u>LOGOUT</u></a>
                            </li>
                            

                        </ul>
                    </div>
                </div>
            </nav>

    <form id="form1" runat="server">
        <div>
        
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"  DeleteCommand="DELETE FROM [certificate] WHERE [certificate_id] = @certificate_id" InsertCommand="INSERT INTO [certificate] ([certificate_id], [volunteer_name], [course_name], [course_year], [Volunteer_batch], [certificate_name], [certificate_desc], [certificaterecived_year], [certificate_photo]) VALUES (@certificate_id, @volunteer_name, @course_name, @course_year,  @volunteer_batch, @certificate_name, @certificate_desc, @certificaterecived_year, @certificate_photo)" SelectCommand="SELECT * FROM [certificate]" UpdateCommand="UPDATE [certificate] SET [volunteer_name] = @volunteer_name, [course_name] = @course_name, [course_year] = @course_year, [volunteer_batch] = @volunteer_batch,  [certificate_name] = @certificate_name, [certificate_desc] = @certificate_desc, [certificaterecived_year] = @certificaterecived_year, [certificate_photo] = @certificate_photo WHERE [certificate_id] = @certificate_id">
        <DeleteParameters>
                    <asp:Parameter Name="certificate_id" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="certificate_id" Type="String" />
                    <asp:Parameter Name="volunteer_name" Type="String" />
                    <asp:Parameter Name="course" Type="String" />
                    <asp:Parameter Name="course_year" Type="String" />
                    <asp:Parameter Name="batch" Type="String" />
                    <asp:Parameter Name="certificate_name" Type="String" />
                    <asp:Parameter Name="certificate_desc" Type="String" />
                    <asp:Parameter Name="certificate_received_year" Type="String" />       
                    <%--<asp:Parameter Name="certificate_photo" Type="String" />--%>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="volunteer_name" Type="String" />
                    <asp:Parameter Name="course" Type="String" />
                    <asp:Parameter Name="course_year" Type="String" />
                    <asp:Parameter Name="batch" Type="String" />
                    <asp:Parameter Name="certificate_name" Type="String" />
                    <asp:Parameter Name="certificate_desc" Type="String" />
                    <asp:Parameter Name="certificate_received_year" Type="String" />
                    <%--<asp:Parameter Name="certificate_photo" Type="String" />--%>
                    <asp:Parameter Name="certificate_id" Type="String" />
                </UpdateParameters>
        </asp:SqlDataSource>
        &nbsp;
        <div align="center">
            <h1 align="center">EDIT CERTIFICATE DETAILS</h1>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="certificate_id" HeaderText="SL NO" SortExpression="certificate_id" />
                <asp:BoundField DataField="volunteer_name" HeaderText="NAME" SortExpression="volunteer_name" />
                <asp:BoundField DataField="course_name" HeaderText="COURSE" SortExpression="course_name" />
                <asp:BoundField DataField="course_year" HeaderText="COURSE YEAR" SortExpression="course_year" />
                <asp:BoundField DataField="volunteer_batch" HeaderText="BATCH" SortExpression="volunteer_batch" />
                <asp:BoundField DataField="certificate_name" HeaderText="CERTIFICATE NAME" SortExpression="certificate_name" />
                <asp:BoundField DataField="certificate_desc" HeaderText="DESC." SortExpression="certificate_desc" />
                <asp:BoundField DataField="certificaterecived_year" HeaderText="RECEIVED YEAR" SortExpression="certificaterecived_year" />
                <%--<asp:BoundField DataField="certificate_photo" HeaderText="certificate_photo" SortExpression="certificate_photo" />--%>
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
            </div>
        </form>
   </div>
</body>
</html>
