<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>

<head>
  <title>RTO Automation</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
</head>
<form id="form1" runat="server">
<body>
  <div id="main" align="center">
    <header>
	  <div id="banner">
	    <div id="welcome">
	      <h3>N-RTO</h3>
	    </div><!--close welcome-->
	    <div id="welcome_slogan">
	    </div><!--close welcome_slogan-->			
	  </div><!--close banner-->
    </header>

    
	<div id="site_content">		

      <div class="slideshow">
	    <ul class="slideshow">
          <li class="show"><img width="900" height="250" src="C:\Users\manishdesai1\Desktop\project\image_2.jpg" alt="&quot;Drive Safe, Be Safe&quot;" /></li>
          <li><img width="900" height="250" src="images/home_2.jpg" alt="&quot;Rto automation&quot;" /></li>
        </ul> 
	  </div>
	
	  <div id="content">
        <div class="content_item">
		  <div class="form_settings">
            <h1>Admin Login Form</h1>
            <p style="padding-bottom: 15px;">
                <asp:Label ID="lblshow" runat="server"></asp:Label></p>           
			<table >
            <tr>
            <td>User Name:-</td>
            <td><asp:TextBox ID="txtusername" runat="server" Width="200px"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Username is Required" ControlToValidate="txtusername"></asp:RequiredFieldValidator></td>
                
            </tr>
            <tr>
            <td>Password:-</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Password is Required" ControlToValidate="txtpassword"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                
            <td></td>
            <td><asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                    onclick="btnSubmit_Click" /></td>
            <td></td>
            </tr>
                
            </table>
          </div><!--close form_settings-->
		</div><!--close content_item-->
      </div><!--close content-->   
	</div><!--close site_content-->  	
  </div><!--close main-->
  
    

  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/image_slide.js"></script>  
  
</body>
</form>
</html>

