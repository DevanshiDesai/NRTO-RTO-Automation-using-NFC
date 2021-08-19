<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="UserLogin" %>

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
	      <h3>RTO Automation Using NFC <span></span></h3>
	    </div><!--close welcome-->
	    <div id="welcome_slogan">
	      <h3>Near Field Communication</h3>
	    </div><!--close welcome_slogan-->			
	  </div><!--close banner-->
    </header>

	
    
	<div id="site_content">		

      <div class="slideshow">
	    <ul class="slideshow">
          <li class="show"><img width="900" height="250" src="images/home_1.jpg" alt="&quot;Enter your caption here&quot;" /></li>
          <li><img width="900" height="250" src="images/home_2.jpg" alt="&quot;Enter your caption here&quot;" /></li>
        </ul> 
	  </div>
	
	  <div id="content">
        <div class="content_item">
		  <div class="form_settings">
            <h1>User Login Form</h1>
            <p style="padding-bottom: 15px;">
                <asp:Label ID="lblshow" runat="server"></asp:Label></p>           
			<table >
            <tr>
            <td>Email ID:-</td>
            <td><asp:TextBox ID="txtemailid" runat="server" Width="200px"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Email Id is Required" ControlToValidate="txtemailid"></asp:RequiredFieldValidator></td>
                
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
  
    <footer>
	  <a href="index.html">Home</a> | <a href="ourwork.html">Our Work</a> | <a href="testimonials.html">Testimonials</a> | <a href="projects.html">Projects</a> | <a href="contact.html">Contact</a><br/><br/>
	  Heart Internet  <a href="#">Website Hosting</a> | website template by <a href="#">Free HTML5 Templates</a>
    </footer>

  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/image_slide.js"></script>  
  
</body>
</form>
</html>


