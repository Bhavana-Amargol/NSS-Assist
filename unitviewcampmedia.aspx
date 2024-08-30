<%@ Page Language="C#" AutoEventWireup="true" CodeFile="unitviewcampmedia.aspx.cs" Inherits="NSS_unitviewcampmedia" %>

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

        

         table{
            min-width:35rem;
            max-width:35rem;
            /*border:2px solid;*/
            background-color:cadetblue;
          /* background-color: #FFDEE9;
            background-image: linear-gradient(0deg, #FFDEE9 0%, #B5FFFC 100%);*/
             box-shadow:rgba(0,0,0,0.5) 10px 10px 10px 10px;
            height:fit-content;
            border-radius:20px;
            
        }
        
         
         td{
             color:white;
             padding:5px;
             border:none;
             font-size:20px;
         }
         #images {
             padding:0px;
         }
         #image{
             object-fit:cover;
             border-radius:10px;
             box-shadow:rgba(0,0,0,0.5) 3px 3px 2px 2px ; 
            
         }
         .name{
             border-radius:20px;
             width:50%;
             background-color:aliceblue;
             color:black;
             text-align:center;
             font-size:x-large;
             font-weight:800;
         }
         .headings{
             text-align:left;
             font-size:medium;
             font-weight:700;
         }
        
         #DataList1{
            background-color:white;
             box-shadow:none;
         }
         h5{
             color:black;
         }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <%--<div class="wrapper" >
        <!-- Sidebar  -->
        <nav id="sidebar" style="background-color:#317773" >
            <div class="sidebar-header" style="background-color:#317773" >
                <img src="img/NCClogo.png" height="150" width="150" style="margin-left:1.5rem;"/>
            </div>

            <ul class="list-unstyled components" style="background-color:#317773">
                <p style="font-weight:800">NATIONAL CADET CORPS</p>

                <li>
                <a href="viewevents.aspx"  style="background-color:#317773;text-decoration:none;color:white;" 
                        onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">EVENTS</a>
                 </li>
                
                <li>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#317773;text-decoration:none;color:white">CAMPS</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu" style="background-color:#317773;color:white" >
                        <li>
                            <a href="viewcamps.aspx" style="background-color:#317773;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">VIEW CAMP DETAILS</a>
                        </li>
                        <li>
                            <a href="campreg.aspx"  style="background-color:#317773;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">CAMP REGISTRATION</a>
                        </li> 
                        
                    </ul>
                </li>
                 <li>
                <a href="viewparade.aspx"  style="background-color:#317773;text-decoration:none;color:white;" 
                        onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">PARADE</a>
                 </li>
                
                <li>
                    <a href="#pageSubmenu4" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#317773;text-decoration:none;color:white">REIMBURSEMENT</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu4" style="background-color:#317773;color:white" >
                        
                        <li>
                            <a href="viewcampreimbuse.aspx"  style="background-color:#317773;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">VIEW CAMP REIMBURSEMENT</a>
                        </li>    
                        <li>
                            <a href="vieweventreimburse.aspx"  style="background-color:#317773;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">VIEW EVENT REIMBURSEMENT</a>
                        </li>  
                    </ul>
                </li>
                <li >
                    <a href="myprofile.aspx" style="background-color:#317773;text-decoration:none;color:white"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">MY PROFILE</a>
                </li>
                <li >
                    <a href="editprofile.aspx" style="background-color:#317773;text-decoration:none;color:white"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">EDIT PROFILE</a>
                </li>
               
                
            </ul>   
        </nav>--%>
        <!-- Page Content  -->
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
            <div>
            <center>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" BorderStyle="None" RepeatColumns="3" RepeatDirection="Horizontal" BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#F7F7DE" />
                <ItemTemplate>
                    
                    <div class="card" style="width: 18rem;margin-right:3rem;margin-bottom:3rem; box-shadow:rgba(0,0,0,0.5) 3px 3px 3px 3px;">
  <img src="Uploads/Event    Media/<%#Eval ("camp_media")%>" style="height:15rem;" class="card-img-top" alt="...">
  <%--<img src="Uploads/Event Permission/<%#Eval ("event_permission")%>" style="height:15rem;" class="card-img-top" alt="...">
  <img src="Uploads/Event Circular/<%#Eval ("event_invitation")%>" style="height:15rem;" class="card-img-top" alt="...">--%>
  <div class="card-body">
      <h5><%# Eval("camp_name") %></h5>

    <p class="card-text"><%# Eval("camp_conductdate") %></p>
      <h5>
          <asp:Label ID="Label12" runat="server" Text="DATE"></asp:Label>
          
          <asp:Label ID="Label1" runat="server" Style="margin-left:2rem;" Text='<%# Eval("camp_conductdate") %>'></asp:Label>
      </h5>
      <h5>
          <asp:Label ID="Label14" runat="server" Text="PARTICIPATION"></asp:Label>
          <asp:Label ID="Label15" runat="server" Style="margin-left:2rem;" Text='<%# Eval("v_participated") %>'></asp:Label>
      </h5>
     <%-- <h5>
          <asp:Label ID="Label16" runat="server" Text="TYPE"></asp:Label>
           <asp:Label ID="Label17" runat="server" Style="margin-left:2rem;" Text='<%# Eval("event_type") %>'></asp:Label>
      </h5>
      <h5>
           <asp:Label ID="Label18" runat="server" Text="EVENT FEES"></asp:Label>
           <asp:Label ID="Label19" runat="server" Style="margin-left:2rem;" Text='<%# Eval("event_amount") %>'></asp:Label>
      </h5>
      --%>
  </div>
</div>





                   <%-- <table  >
                        <tr>
                            <td rowspan="6" id="images">
                                <img id="image" src="Uploades/Event photos/<%#Eval ("event_photos")%>" height="250" width="250"/>
                            </td>
                            <td colspan="2" class="name">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("event_name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="headings">
                                <asp:Label ID="Label2" runat="server" Text="DESCRIPTION"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("event_desc") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="headings">
                                <asp:Label ID="Label4" runat="server" Text="DATE"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("event_date") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="headings">
                                <asp:Label ID="Label6" runat="server" Text="TIME"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("event_time") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="headings">
                                <asp:Label ID="Label8" runat="server" Text="TYPE"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("event_type") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="headings">
                                <asp:Label ID="Label10" runat="server" Text="EVENT FEES"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("event_amount") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>--%>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
                </center>
        </div>
        </div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [campmedia]"></asp:SqlDataSource>
 </form>
</body>
</html>

