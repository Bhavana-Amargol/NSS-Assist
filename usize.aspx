<%@ Page Language="C#" AutoEventWireup="true" CodeFile="usize.aspx.cs" Inherits="NSS_usize" %>

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
            background-color:teal;
            margin-left:24rem;
        }
        body {
  min-height: 100vh;
}
        
        
        .col1{
            text-align:center;
            font-size:x-large;
            font-weight:700;
            color:white;

        }
        .coll2 td{
            margin-left:5rem;
            width:30%;

        }
        table td {
            color:black;
            

        }
        #Button1{
            font-size:x-large;
            background-color:forestgreen;
           border-style:none;
           color:white;
           border-radius:10px;
           padding:5px;

           margin-right:2rem;
       
       }
       #Button2{
           font-size:x-large;
           background-color:red;
           border-style:none;
           color:white;
           border-radius:10px;
           padding:5px;
       }
    </style>
    
</head>
<body>
    <div class="wrapper" >
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
                                <a class="nav-link" href="adminhome.aspx" style="color:white"><u>HOME</u></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="adminlogin.aspx"style="color:white"><u>LOGOUT</u></a>
                            </li>
                         </ul>
                    </div>
                </div>
            </nav>

            
        <div align="center">
       <form id ="form1" runat="server">
       <h1 align="center" >Uniform Price Table</h1>
      
       <asp:GridView ID="GridView1" runat="server" DataKeyNames="uid" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" Width="432px" AllowPaging="True" AllowSorting="True" CssClass="visible-sm">
           <Columns>
               <asp:BoundField DataField="uid" HeaderText="" SortExpression="uid" ReadOnly="true" />
               <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
               <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
           </Columns>
           <Columns>
               <asp:CommandField ShowEditButton="true" ButtonType="Button" EditText="Edit" UpdateText="Update" CancelText="Cancel" />
                            <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
           </Columns>
           <FooterStyle BackColor="White" ForeColor="#000066" />
           <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
           <RowStyle ForeColor="#000066" />
           <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#F1F1F1" />
           <SortedAscendingHeaderStyle BackColor="#007DBB" />
           <SortedDescendingCellStyle BackColor="#CAC9C9" />
           <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [uniformsize]" DeleteCommand="DELETE FROM [uniformsize] WHERE [uid] = @uid" InsertCommand="INSERT INTO [uniformsize] ([uid], [gender], [price]) VALUES (@uid, @gender,@price)" UpdateCommand="UPDATE [uniformsize] SET [gender] = @gender, [price] = @price WHERE [uid] = @uid">
         <DeleteParameters>
                            <asp:Parameter Name="uid" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="uid" Type="String" />
                            <asp:Parameter Name="gender" Type="String" />
                            <asp:Parameter Name="price" Type="String" />
                            <%--<asp:Parameter Name="" Type="String" />
                            <%--<asp:Parameter Name="event_permission" Type="String" />--%>
                            
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="uid" Type="String" />
                            
                            <asp:Parameter Name="gender" Type="String" />
                            <asp:Parameter Name="price" Type="String" />
                            <%--<asp:Parameter Name="" Type="String" />--%>
                           <%-- <asp:Parameter Name="event_permission" Type="String" />
                            <asp:Parameter Name="" Type="String" />
                            <%--<asp:Parameter Name="event_id" Type="String" />--%>
                        </UpdateParameters>
    </asp:SqlDataSource>

        
            
        
       </form>
            </div>
       </div>
            
        </div>
   </body>
    </html>



