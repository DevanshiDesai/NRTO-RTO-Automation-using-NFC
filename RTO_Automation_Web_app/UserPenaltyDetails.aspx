<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserPenaltyDetails.aspx.cs" Inherits="UserPenaltyDetails" %>

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
    </head>
<body>
    <form id="form1" runat="server">
    <div id="main" align="center">
        <div id="site_content">
            <div id="content">
                <div class="content_item">
                    <h1>
                        Penalty Details</h1>
                    <table>
                        <%--<tr>
                            <td>
                                <h3>
                                    <a href="Add_new_User.aspx">Add New User</a></h3>
                            </td>
                        </tr>--%>
                        <tr>
                            <td>
                                <h3>
                                <a href="UserLogin.aspx"> Logout </a>
                                </h3>
                            </td>
                        </tr>
                        
                    </table>
                    <asp:GridView ID="GridView1" runat="server"
                        Width="874px">
                        
                    </asp:GridView>
                </div>
                <!--close content_item-->
            </div>
            <!--close content-->
        </div>
        <!--close site_content-->
    </div>
    <!--close main-->
    <!-- javascript at the bottom for fast page loading -->
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/image_slide.js"></script>
    </form>
</body>
</html>

