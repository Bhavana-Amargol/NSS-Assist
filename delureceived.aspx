<%@ Page Language="C#" AutoEventWireup="true" CodeFile="delureceived.aspx.cs" Inherits="NSS_delureceived" %>

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
        #GridView1{
        margin-top:2rem;
        }
    </style>--%>
</head>
<body>
    <form id="form1" runat="server">
        
            <div id="content">

            <nav class="navbar navbar-expand-lg sticky-top " style="background-color:#32064A;border-radius:10px">
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
                 <div align="center">
                      <h1 align="center" >Clear Uniform Received List </h1>
                     <br /> 
                     <asp:GridView ID="GridView1" runat="server" DataKeyNames="received_id" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="981px" AllowSorting="True">
                         <Columns>
                             <asp:BoundField DataField="received_id" HeaderText="SLNO" SortExpression="received_id" />
                             <asp:BoundField DataField="volunteer_fname" HeaderText="FNAME" SortExpression="volunteer_fname" />
                             <asp:BoundField DataField="volunteer_lname" HeaderText="LNAME" SortExpression="volunteer_lname" />
                             <asp:BoundField DataField="volunteer_course" HeaderText="COURSE" SortExpression="volunteer_course" />
                             <asp:BoundField DataField="volunteer_courseyear" HeaderText="COURSEYR" SortExpression="volunteer_courseyear" />
                             <asp:BoundField DataField="volunteer_gender" HeaderText="GENDER" SortExpression="volunteer_gender" />
                             <asp:BoundField DataField="volunteer_batch" HeaderText="BATCH" SortExpression="volunteer_batch" />
                             <asp:BoundField DataField="received_date" HeaderText="RECEIVED DATE" SortExpression="received_date" />
                         </Columns>
                         <Columns>
                         <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                             </Columns>
                         <FooterStyle BackColor="#CCCCCC" />
                         <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                         <RowStyle BackColor="White" />
                         <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                         <SortedAscendingCellStyle BackColor="#F1F1F1" />
                         <SortedAscendingHeaderStyle BackColor="#808080" />
                         <SortedDescendingCellStyle BackColor="#CAC9C9" />
                         <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [received_id], [volunteer_fname], [volunteer_lname], [volunteer_course], [volunteer_courseyear], [volunteer_gender], [volunteer_batch], [received_date] FROM [uniformreceived]" DeleteCommand="DELETE FROM [uniformreceived] WHERE [received_id] = @received_id" >
             <DeleteParameters>
                            <asp:Parameter Name="received_id" Type="String" />
                        </DeleteParameters>
            </asp:SqlDataSource>
</div>
</div>
    </form>
</body>
</html>
