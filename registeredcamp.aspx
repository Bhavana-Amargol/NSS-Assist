<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registeredcamp.aspx.cs" Inherits="NCC_registeredcamp" %>

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
        #Button1,#Button2,#Button3{
            padding:7px;
            border-style:none;
            color:white;
            background-color:lightcoral;
            border-radius:10px;
        }
        #Button1:hover{
            transition:ease ;
            box-shadow:rgba(0,0,0,0.5) 5px 5px 5px 5px;
        }
        #Button2:hover{
            transition:ease ;
            box-shadow:rgba(0,0,0,0.5) 5px 5px 5px 5px;
        }
        #Button3:hover {
                transition: ease;
                box-shadow: rgba(0,0,0,0.5) 5px 5px 5px 5px;
        }
        #GridView1
        {
            
            box-shadow:rgba(0,0,0,0.5) 10px 10px 10px 10px;
        }
            
            
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <%-- <div>

            <div class="wrapper" >
        <!-- Sidebar  -->
        <nav id="sidebar" style="background-color:#22395D" >
            <div class="sidebar-header" style="background-color:#22395D" >
                <img src="img/NCClogo.png" height="150" width="150" style="margin-left:1.5rem;"/>
            </div>

            <ul class="list-unstyled components" style="background-color:#22395D">
                <p style="font-weight:800">NATIONAL CADET CORPS</p>
                <li >
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" style="background-color:#22395D;text-decoration:none;color:white" class="dropdown-toggle">EVENTS</a>
                    <ul class="collapse list-unstyled" id="homeSubmenu" style="background-color:#22395D">
                        <li>
                            <a href="events.aspx"  style="background-color:#22395D;color:white;text-decoration:none;" onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">ADD EVENT DETAILS</a>
                        </li>
                        <li>
                            <a href="editevents.aspx"  style="background-color:#22395D;color:white;text-decoration:none;" onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">EDIT EVENT DETAILS</a>
                        </li>
                        <li>
                            <a href="cadevents.aspx"  style="background-color:#22395D;color:white;text-decoration:none;" onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">VIEW EVENTS</a>
                        </li>
                        
                    </ul>
                </li>
                
                <li>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#22395D;text-decoration:none;color:white">CAMPS</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu" style="background-color:#22395D;color:white" >
                        <li>
                            <a href="camps.aspx" style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">ADD CAMP DETAILS</a>
                        </li>
                        <li>
                            <a href="editcamps.aspx" style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">EDIT CAMP DETAILS</a>
                        </li>
                        <li>
                            <a href="cadcamps.aspx"  style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">VIEW CAMPS</a>
                        </li>                       
                    </ul>
                </li>
                <li>
                    <a href="#pageSubmenu2" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#22395D;text-decoration:none;color:white">PARADE</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu2" style="background-color:#22395D;color:white" >
                        <li>
                            <a href="parade.aspx" style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">ADD PARADE DETAILS</a>
                        </li>
                        <li>
                            <a href="editparade.aspx"  style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">EDIT PARADE DETAILS</a>
                        </li> 
                        <li>
                            <a href="cadparade.aspx"  style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">VIEW PARADE DETAILS</a>
                        </li> 
                        
                    </ul>
                </li>
                <li>
                    <a href="#pageSubmenu3" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#22395D;text-decoration:none;color:white">CADET SELECTION</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu3" style="background-color:#22395D;color:white" >
                        <li>
                            <a href="cadetselection.aspx" style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">UPDATE MARKS</a>
                        </li>
                        <li>
                            <a href="cadetapproval.aspx"  style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">APPROVE CANDIDATES</a>
                        </li>                       
                    </ul>
                </li>
                <li>
                    <a href="cadetdb.aspx"  style="background-color:#22395D;text-decoration:none;color:white;" 
                        onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">CADET DATABASE</a>
                </li>
                <li>
                    <a href="#pageSubmenu4" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#22395D;text-decoration:none;color:white">REIMBURSEMENT</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu4" style="background-color:#22395D;color:white" >
                        <li>
                            <a href="reimbursement.aspx" style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">REIMBURSE</a>
                        </li>
                        <li>
                            <a href="cadcampreimbuse.aspx"  style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">VIEW CAMP REIMBURSEMENT</a>
                        </li>    
                        <li>
                            <a href="cadeventreimbuse.aspx"  style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">VIEW EVENT REIMBURSEMENT</a>
                        </li>  
                    </ul>
                </li>
                <li >
                    <a href="photo.aspx" style="background-color:#22395D;text-decoration:none;color:white"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">PHOTO GALLERY</a>
                </li>
                
            </ul>

            
        </nav>--%>

        <!-- Page Content  -->
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




            <div>
                <center><h1>REGISTERED VOLUNTEERS</h1></center>
                
                <br /><br /><br />
                <left style="margin-left:7rem;">
            <asp:Button ID="Button1" runat="server" Text="EXPORT AS EXCEL"  OnClick="Button1_Click"/>
            <asp:Button ID="Button2" runat="server" Text="EXPORT AS PDF"  OnClick="Button2_Click"/>
            <asp:Button ID="Button3" runat="server" Text="EXPORT AS DOCUMENT"  OnClick="Button3_Click"/>
                </left></div>
            <br />
            <center>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" EnableSortingAndPagingCallbacks="True">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="v_fname" HeaderText="VOLUNTEER FIRST NAME" />
                    <asp:BoundField DataField="v_lname" HeaderText="LAST NAME" />
                    <asp:BoundField DataField="mobileno" HeaderText="MOBILE NUMBER" />
                    <asp:BoundField DataField="mailid" HeaderText="EMAIL ID" />
                    <asp:BoundField DataField="pmobileno" HeaderText="PARENT's MOBILE NO." />
                    <asp:BoundField DataField="batch" HeaderText="BATCH" />
                    <asp:BoundField DataField="c_year" HeaderText="COURSE YEAR" />
                    <asp:BoundField DataField="course" HeaderText="COURSE" />
                    <asp:BoundField DataField="clgname" HeaderText="COLLEGE" />
                    <asp:BoundField DataField="campname" HeaderText="CAMP NAME" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="Gray" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
</center>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [campreg]"
        DeleteCommand="DELETE FROM [campreg] WHERE [cr_id] = @cr_id" InsertCommand="INSERT INTO [campreg] ([cr_id], [v_fname], [v_lname], [mobileno],[mailid][pmobileno][c_year] [course], [clgname],[campname]) VALUES (@cr_id,@v_fname,@v_lname,@mobileno,@mailid,@pmobileno,@batch,@c_year,@c_course,@clgname,@campname)" UpdateCommand="UPDATE [campreg] SET [v_fname] = @v_fname,[v_lname] = @v_lname, [mobileno] = @mobileno,[mailid] = @mailid, [pmobileno] = @pmobileno, [batch] = @batch,[c_year] = @c_year, [course] = @course,[clgname] = @clgname,[campname] = @campname  WHERE [cr_id] = @cr_id">
           <DeleteParameters>
                <asp:Parameter Name="cr_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="cr_id" Type="String" />
                <asp:Parameter Name="v_fname" Type="String" />
                <asp:Parameter Name="v_lname" Type="String" />
                <asp:Parameter Name="mobileno" Type="String" />
                <asp:Parameter Name="mailid" Type="String" />
                <asp:Parameter Name="pmobileno" Type="String" />
                <asp:Parameter Name="batch" Type="String" />
                <asp:Parameter Name="c_year" Type="String" />
                <asp:Parameter Name="course" Type="String" />
                <asp:Parameter Name="clgname" Type="String" />
                <asp:Parameter Name="campname" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                 <asp:Parameter Name="cr_id" Type="String" />
                <asp:Parameter Name="v_fname" Type="String" />
                <asp:Parameter Name="v_lname" Type="String" />
                <asp:Parameter Name="mobileno" Type="String" />
                <asp:Parameter Name="mailid" Type="String" />
                <asp:Parameter Name="pmobileno" Type="String" />
                <asp:Parameter Name="batch" Type="String" />
                <asp:Parameter Name="c_year" Type="String" />
                <asp:Parameter Name="course" Type="String" />
                <asp:Parameter Name="clgname" Type="String" />
                <asp:Parameter Name="campname" Type="String" />
            </UpdateParameters>
                </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server"></asp:Label>

      
        </div>
    </div>


    </form>
</body>
</html>
