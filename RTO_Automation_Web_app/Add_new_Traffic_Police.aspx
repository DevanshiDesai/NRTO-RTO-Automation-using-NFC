<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_new_Traffic_Police.aspx.cs" Inherits="Add_new_Traffic_Police" %>
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
                        First Name:-
                    </td>
                    <td class="style1">
                        <asp:textbox id="txtfirst_name" runat="server" Width="200px"></asp:textbox>
                    </td>
                    <td class="style2">
                        <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" errormessage="First Name is Required"
                            controltovalidate="txtfirst_name"></asp:requiredfieldvalidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Middle Name:-
                    </td>
                    <td>
                        <asp:textbox id="txtmiddle_name" runat="server" Width="200px"></asp:textbox>
                    </td>
                    <td class="style3">
                        <asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" errormessage="Middle Name is Required"
                            controltovalidate="txtmiddle_name"></asp:requiredfieldvalidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Last Name:-
                    </td>
                    <td>
                        <asp:textbox id="txtlast_name" runat="server" Width="200px"></asp:textbox>
                    </td>
                    <td class="style3">
                        <asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" errormessage="Last Name is Required"
                            controltovalidate="txtlast_name"></asp:requiredfieldvalidator>
                    </td>
                </tr>
                    <tr>
                    <td class="style4">
                        Address:-
                    </td>
                    <td>
                        <asp:textbox id="txtaddress" runat="server" textmode="MultiLine" Width="200px"></asp:textbox>
                    </td>
                    <td class="style3">
                        <asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" errormessage="Address is Required"
                            controltovalidate="txtaddress"></asp:requiredfieldvalidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Contact No:-
                    </td>
                    <td>
                        <asp:textbox id="txtcontact_no" runat="server" Width="200px"></asp:textbox>
                    </td>
                    <td class="style3">
                        <asp:requiredfieldvalidator id="RequiredFieldValidator5" runat="server" errormessage="Contact No is Required"
                            controltovalidate="txtcontact_no"></asp:requiredfieldvalidator>
                        <asp:regularexpressionvalidator id="RegularExpressionValidator1" runat="server" errormessage="Invalid Contact No"
                            controltovalidate="txtcontact_no" 
                            ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:regularexpressionvalidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Email Id:-
                    </td>
                    <td>
                        <asp:textbox id="txtemail_id" runat="server" Width="200px"></asp:textbox>
                    </td>
                    <td class="style3">
                        <asp:requiredfieldvalidator id="RequiredFieldValidator6" runat="server" errormessage="RequiredFieldValidator"
                            controltovalidate="txtemail_id"></asp:requiredfieldvalidator>
                        <asp:regularexpressionvalidator id="RegularExpressionValidator2" runat="server" errormessage="RegularExpressionValidator"
                            controltovalidate="txtemail_id" 
                            ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:regularexpressionvalidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Designation:-
                    </td>
                    <td>
                        <asp:textbox id="txtDesignation" runat="server" Width="200px"></asp:textbox>
                    </td>
                    <td class="style3">
                        <asp:requiredfieldvalidator id="RequiredFieldValidator8" runat="server" errormessage="Designation Is Required"
                            controltovalidate="txtDesignation"></asp:requiredfieldvalidator>
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
