<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Header.ascx.cs" Inherits="Header" %>

<html>
<head>
  <title>RTO Automation</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/image_slide.js"></script>
</head>

<body>
  <div id="main" align="center">
    <header>
	  <div id="banner">
	    <div id="welcome">
	      <h3>RTO Automation Using NFC <span></span></h3>
	    </div><!--close welcome-->
	    <div id="welcome_slogan">
	      <h3>Near field Communication</h3>
	    </div><!--close welcome_slogan-->			
	  </div><!--close banner-->
    </header>

	<nav>
	  <div id="menubar">
        <ul id="nav">
          <li class="current"><a href="Home.aspx">Home</a></li>
          <li><a href="manage_users.aspx">Users</a></li>
          <li><a href="manage_traffic_police.aspx">Traffic Police</a></li>
          <li><a href="manage_penalties.aspx">Penalties</a></li>
          <li><a href="manage_complaints.aspx">Penalty Histories</a></li>
          <li><a href="Login.aspx?msg=logout">Logout</a></li>
        </ul>
      </div><!--close menubar-->	
    </nav>	
    

</html>