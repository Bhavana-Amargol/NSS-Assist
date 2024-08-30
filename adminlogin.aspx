


<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin login</title>
<link href="css/login.css" rel="stylesheet" />
    <%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/> --%> 
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">  
        $(document).ready(function () {  
            $('#show_password').hover(function show() {  
            //    //Change the attribute to text  
            //    $('#TextBox1').attr('type', 'text');  
            //    $('.icon').removeClass('fa fa-eye-slash').addClass('fa fa-eye');  
            //},  
            //function () {  
            //    //Change the attribute back to password  
            //    $('#TextBox1').attr('type', 'password');  
            //    $('.icon').removeClass('fa fa-eye').addClass('fa fa-eye-slash');  
            //});  
            //CheckBox Show Password  
            $('#ShowPassword').click(function () {  
                $('#Password').attr('type', $(this).is(':checked') ? 'text' : 'password');  
            });  
        });  
</script>  --%>
   <%-- <script type="text/javascript">

        $(document).ready(

            function () {

                $("#TextBox1").keydown(function () {

                    var oldVal = $("#TextBox1").val();

                    var checkLength = $("#TextBox1").val().length;

                    if (checkLength >= 1) {

                        var newVal = oldVal.charAt(0).replace(oldVal.charAt(0), "*");

                        $("#TextBox1").val(newVal);

                    }

                });

            });

    </script>--%>
   
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    function ShowHidePassword() {
        var txt = $('#<%=TextBox2.ClientID%>');
        if (txt.prop("type") == "password") {
            txt.prop("type", "text");
            $("label[for='cbShowHidePassword']").text("Hide ");
        }
        else {
            txt.prop("type", "password");
            $("label[for='cbShowHidePassword']").text("Show ");
        }
    }
</script>


    <style type="text/css">
    @media screen {
             .container {
                 /*width: 50%;*/
                 min-height: 100%;
                /* border-style: none;*/
                 /*box-shadow: rgba(0,0,0,0.5) 10px 10px 10px 10px;
                 background-color: lightpink;*/
                 min-width: 100vh;
             }
  .hidden {
    display: none;
    width: 100%;
    
  }
}
   


        #Button2{
             border-style:none;
             padding-top:3px;
            padding:10px;
           border-radius:10px;
           color:white;
           font-size:xx-large;
           background-color:black;
           margin-right:100rem;
           margin-top:3rem;
           box-shadow:rgba(0,0,0,0.5) 5px 5px 5px 5px;
        }
         #Button3{
           border:solid;
           
           color:black;
           font-size:x-large;
           text-decoration:solid;
           padding:10px;
           background-color:seagreen;
           
        }

        #Button4{
           font-size:x-large;
           background-color:red;
            border:solid;
           
           color:black;
           font-size:x-large;
           text-decoration:solid;
           padding:10px;
       }

        /*.css{
           
            margin: 0px 0px 0px 0px;*/
           
           /*background:linear-gradient(#e66465,#9198e5);*/
            /*background-repeat:no-repeat;*/
           
            /*padding: 0px 0px 0px 0px;*/
            /*background-size:cover;*/
            /*min-height:100vh;
            object-fit:cover;*/
           /* height:auto;*/
            /*width:fit-content;
           position:static;*/
            /*z-index:auto;*/

        /*}*/
         .css
        {
            /*background-image:linear-gradient(0deg, #D16BA5, #86A8E7);*/
           /* background-image: linear-gradient(to right top, #d16ba5, #c777b9, #ba83ca, #aa8fd8, #9a9ae1, #8aa7ec, #79b3f4, #69bff8, #52cffe, #41dfff, #46eefa, #5ffbf1);*/
            /*width:fit-content;*/
             background-image:url(img/bg1.jpg);
            min-height:100vh;
            /*min-width:100vh;*/
          background-size:cover;
          background-repeat:no-repeat;
          overflow:hidden;
          /*margin:0;*/
        }


        /*body {
            height: 100%;
            margin: 0;*/
            /*height:auto;
             margin:0;
             padding:0;
              min-height: 100vh;
               min-width: 100vh;*/
        /*}*/
        .container
        {
        background-color:burlywood;
        box-shadow:rgba(0,0,0,0.5) 10px 10px 10px 10px;
        margin-top:100px;
        color:black;
         
       /* width:30%;*/
        }
        
        
        .auto-style1 {
            width: 36px;
            height: 30px;
        }
        
       
        
    </style>

</head>
<body>
    <form id="form1" runat="server" style="">
            <%--height: 1000px;
            padding: 0px 0px 0px 0px;*/--%>
           
      <div class="css">
       <%-- <div id="page-background">
            <img src="img/" width="100%" height="100%" /></div>
	<div id="content">--%>
   <div>
        <a id="Button2" href="index.aspx">HOME</a>
    </div>
     <%-- <div class="container1">--%>

      
      <div class="container" >
      
          <br /><br />
        <h1 >LOGIN AS ADMIN</h1>
      <center>
      <table>
      <tr>
               
                <td align="center" style="color:black;">USERNAME </td>
                <td >
                    <asp:TextBox ID="TextBox1" runat="server" Width="250px" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="INVALID FORMAT OF EMAIL ADDRESS" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="Medium" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
                    <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                

                
                

            </tr>
            <tr>
                <td style="color:black;">PASSWORD</td>
                <td >
                    <asp:TextBox ID="TextBox2" runat="server" Width="245px" TextMode = "Password" ></asp:TextBox>
                     <input id="cbShowHidePassword" type="checkbox" onclick="ShowHidePassword();" class="auto-style1" />
                      <label class="form-control" for='cbShowHidePassword'>Show</label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,10}$" ControlToValidate="TextBox2" ErrorMessage="INVALID PASSWORD!Minimum eight and maximum 10 characters, at least one uppercase letter, one lowercase letter, one number and one special character" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                                               <%-- <asp:CheckBox ID="ShowPassword" runat="server" onclick="" /> --%>

            </tr>
          <center>
          <tr >
                <td colspan="3" >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" style="color:darkred;">Forgot Password?</asp:HyperLink>
                </td>
                <td >
                    &nbsp;</td>
            </tr>
          </center> 
          </table>
                <br />
          <br />
                <asp:Button ID="Button3" runat="server" Text="SUBMIT" OnClick="Button3_Click" />
           <asp:Button ID="Button4" runat="server" Text="CLEAR" OnClick="Button4_Click" />
                 &nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
          </center>  
          <br /><br /><br />
        </div>
          </div>
       
        </form>
        </body>
        </html>
    
            
        
        
            
        
       