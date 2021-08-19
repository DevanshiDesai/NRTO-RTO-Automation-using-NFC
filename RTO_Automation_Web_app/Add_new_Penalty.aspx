<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_new_Penalty.aspx.cs" Inherits="Add_new_Penalty" %>

<%@ Register TagPrefix="uc1" TagName="header" Src="~/Header.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>

<head id="Head1" runat="server">
  <title>RTO Automation</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
    <style type="text/css">
        .style1
        {
            width: 84px;
        }
        .style2
        {
            width: 88px;
        }
        .style3
        {
            width: 89px;
        }
        .style4
        {
            width: 211px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
  <div id="main" align="center">
    <uc1:header ID="header" runat="server"></uc1:header>
    <div id="site_content" >
    <div id="content">
        <div class="content_item">
            <h1>
                Add New Traffic Police</h1>
            <table align="center">
            <tr>
            <td></td>
            <td>
                <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label></td>
            <td></td>
            </tr>
                <tr>
                    <td class="style4">
                        Offences:-
                    </td>
                    <td class="style1">
                        <asp:textbox id="txtoffences" runat="server" Width="200px"></asp:textbox>
                    </td>
                    <td class="style2">
                        <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" errormessage="Offences is required"
                            controltovalidate="txtoffences"></asp:requiredfieldvalidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Penalty fine:-
                    </td>
                    <td>
                        <asp:textbox id="txtpenalty_fine" runat="server" Width="200px"></asp:textbox>
                    </td>
                    <td class="style3">
                        <asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" errormessage="Penalty fine Required"
                            controltovalidate="txtpenalty_fine"></asp:requiredfieldvalidator>
                    </td>
                </tr>
                
                
                <tr>
                    <td class="style4">
                    </td>
                    <td>
                        <asp:button id="btnsubmit" runat="server" text="Submit" 
                            onclick="btnsubmit_Click" Width="100px" />&nbsp
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="100px" 
                            onclick="btnCancel_Click" />
                    </td>
                    <td class="style3">
                    </td>
                </tr>
            </table>
        </div>
        <!--close content_item-->
    </div>
    <!--close content-->
</div>
<!--close site_content-->  	
  </div><!--close main-->
  
    

  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/image_slide.js"></script>
  
    </form>
  
</body>
</html>
