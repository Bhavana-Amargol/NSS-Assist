<%@ Page Language="C#" AutoEventWireup="true" CodeFile="delcmedia.aspx.cs" Inherits="NSS_delcmedia" %>

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
                                <a class="nav-link" href="adminhome.aspx" style="color:white"><strong>HOME</strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="adminlogin.aspx"style="color:white"><strong>LOGOUT</strong></a>
                            </li>
                            

                        </ul>
                    </div>
                </div>
            </nav>
                 <div align="center">
                      <h1 align="center" >Clear Camp Media List </h1>
                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cm_id"  DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="775px">
                          <AlternatingRowStyle BackColor="#CCCCCC" />
                          <Columns>
                              <asp:BoundField DataField="cm_id" HeaderText="SL NO" SortExpression="cm_id" />
                              <asp:BoundField DataField="camp_name" HeaderText="CAMP NAME" SortExpression="camp_name" />
                              <asp:BoundField DataField="camp_conductdate" HeaderText="CONDUCTED DATE" SortExpression="camp_conductdate" />
                              <%--<asp:BoundField DataField="camp_media" HeaderText="camp_media" SortExpression="camp_media" />--%>
                              <asp:BoundField DataField="v_participated" HeaderText="PARTICIPANTS" SortExpression="v_participated" />

                          </Columns>
                          <Columns>
                               <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                          </Columns>
                          <FooterStyle BackColor="#CCCCCC" />
                          <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                          <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                          <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                          <SortedAscendingCellStyle BackColor="#F1F1F1" />
                          <SortedAscendingHeaderStyle BackColor="#808080" />
                          <SortedDescendingCellStyle BackColor="#CAC9C9" />
                          <SortedDescendingHeaderStyle BackColor="#383838" />
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [campmedia]"  DeleteCommand="DELETE FROM [campmedia] WHERE [cm_id] = @cm_id">
                          <DeleteParameters>
                            <asp:Parameter Name="cm_id" Type="String" />
                        </DeleteParameters>
                      </asp:SqlDataSource>
                     <br />
                     

                     </div>
</div>
    </form>
</body>
</html>