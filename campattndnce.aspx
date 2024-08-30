<%@ Page Language="C#" AutoEventWireup="true" CodeFile="campattndnce.aspx.cs" Inherits="NSS_campattndnce" %>

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
    <style>
     .gd{
        /*font-size:x-large;*/
        margin-top:-540px;
        margin-left:2rem;
    }
    </style>
    
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
                                <a class="nav-link" href="adminhome.aspx" style="color:white"><strong>HOME</strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="adminlogin.aspx"style="color:white"><strong>LOGOUT</strong></a>
                            </li>
                            

                        </ul>
                    </div>
                </div>
               </nav>
          </div>
    <form id="form1" runat="server">
        <div align="center">  
             <div class="gd">
              <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="EXPORT AS EXCEL" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="EXPORT AS DOCUMENT" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="EXPORT AS PDF" />
            </div>  
            <br />
            <div>
                <div style="margin-left:1rem;background-color:antiquewhite;width:fit-content;padding:20px;border-radius:10px;">
                <br />
            <div style="margin-left:10rem;margin-right:auto;">
                
           
                
               <%-- <asp:DropDownList ID="DropDownList1" runat="server" Width="188px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="volunteer_course" DataValueField="volunteer_course" >
                    <asp:ListItem Selected="True" Hidden Value="0">Choose Course</asp:ListItem>
                    <asp:ListItem>PUC</asp:ListItem>
                    <asp:ListItem>BCA </asp:ListItem>
                    <asp:ListItem>BBA</asp:ListItem>
                    <asp:ListItem>BA</asp:ListItem>
                    <asp:ListItem>B.com</asp:ListItem>
                    <asp:ListItem>B.Sc</asp:ListItem>
                    <asp:ListItem>M.com</asp:ListItem>
                </asp:DropDownList>--%>
                <%--<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="volunteer_course" DataValueField="volunteer_course" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                </asp:DropDownList>--%>
                <asp:Label ID="Label4" runat="server" ></asp:Label>
                <br />
                <%--<asp:Button ID="Button4" runat="server" Text="SEARCH" OnClick="Button4_Click" />--%>
                <%--style="margin-left:35rem;"--%>
                <hr />
               <div align="center">
                   <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2"  GridLines="None"  Width="989px" ForeColor="Black" >
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <Columns>
                                <asp:BoundField DataField="cr_id" HeaderText="SL NO" SortExpression="cr_id" />
                                <asp:BoundField DataField="v_fname" HeaderText="FNAME" SortExpression="v_fname" />
                                <asp:BoundField DataField="v_lname" HeaderText="LNAME" SortExpression="v_lname" />
                                <asp:BoundField DataField="mobileno" HeaderText="MOBILENO." SortExpression="mobileno" />
                                <asp:BoundField DataField="mailid" HeaderText="MAILID" SortExpression="mailid" />
                                <%--<asp:ButtonField CommandName="Cancel" Text="Button" />
                                <%--<asp:BoundField DataField="volunteer_course" SortExpression="volunteer_course" />
                                <asp:BoundField DataField="volunteer_course" SortExpression="volunteer_course" />
                                <asp:BoundField DataField="volunteer_course" SortExpression="volunteer_course" />
                                <asp:BoundField DataField="volunteer_course" SortExpression="volunteer_course" />
                                <asp:BoundField DataField="volunteer_course" SortExpression="volunteer_course" />
                                <asp:BoundField DataField="volunteer_course" SortExpression="volunteer_course" />
                                <asp:BoundField DataField="volunteer_course" SortExpression="volunteer_course" />
                                <asp:BoundField DataField="volunteer_course" SortExpression="volunteer_course" />
                                <asp:BoundField DataField="volunteer_course" SortExpression="volunteer_course" />--%>
                                <%--<asp:BoundField DataField="status" SortExpression="status" />--%>
                                <%--<asp:BoundField DataField="volunteer_course" SortExpression="volunteer_course" />
                                <asp:BoundField DataField="volunteer_course" SortExpression="volunteer_course" />--%>
                               <%-- <asp:ButtonField ButtonType="Button" CommandName="Edit" Text="Edit" />--%>
                                <%--<asp:BoundField DataField="pmobileno" HeaderText="pmobileno" SortExpression="pmobileno" />--%>
                                <asp:BoundField DataField="batch" HeaderText="BATCH" SortExpression="batch" />
                                <asp:BoundField DataField="c_year" HeaderText="COURSEYEAR" SortExpression="c_year" />
                                <asp:BoundField DataField="course" HeaderText="COURSE" SortExpression="course" />
                                <asp:BoundField DataField="clgname" HeaderText="CLGNAME" SortExpression="clgname" />
                                <asp:BoundField DataField="campname" HeaderText="CAMPNAME" SortExpression="campname" />
                                <asp:TemplateField HeaderText="Date">
                                    <ItemTemplate></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Status">
                                    <ItemTemplate>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CssClass="auto-style3" Height="16px" Width="290px">
                                    <asp:ListItem Value="P">Present</asp:ListItem>
                                    <asp:ListItem Value="A">Absent</asp:ListItem>
                                    </asp:RadioButtonList>
                                    </ItemTemplate>
                                    </asp:TemplateField>
                                
                                
                                
                                
                                
                            </Columns>
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <SortedAscendingCellStyle BackColor="#FAFAE7" />
                            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                            <SortedDescendingCellStyle BackColor="#E1DB9C" />
                            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                        </asp:GridView>

                         <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [v_id], [volunteer_fname], [volunteer_lname], [volunteer_course], [volunteer_courseyear], [volunteer_batch] FROM [volunteer]">
                             </asp:SqlDataSource>--%>
                        <%--DataSourceID="SqlDataSource1"--%>
                   <%-- </center>--%>

                   
                </div>

 


                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [campreg]"></asp:SqlDataSource>

 


                <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
            
            
            

          

            
            
</div>
         </div>   
        </div>
    </div>
        </form>
    </body>
    </html>
                    
