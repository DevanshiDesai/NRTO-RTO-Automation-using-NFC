<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manage_users.aspx.cs" Inherits="manage_users" %>

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
        <div id="site_content">
            <div id="content">
                <div class="content_item">
                    <h1>
                        Manage Users</h1>
                    <table>
                        <tr>
                            <td>
                                <h3>
                                    <a href="Add_new_User.aspx">Add New User</a></h3>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblmessage" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                        Width="874px">
                        <Columns>
                            <asp:BoundField DataField="user_id" HeaderText="user_id" InsertVisible="False" ReadOnly="True"
                                SortExpression="user_id">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="middle_name" HeaderText="middle_name" SortExpression="middle_name">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="licence_type" HeaderText="licence_type" SortExpression="licence_type">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="balance" HeaderText="balance" SortExpression="balance">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:HyperLinkField DataNavigateUrlFields="user_id" DataNavigateUrlFormatString="Add_new_user.aspx?Action=edit&amp;user_id={0}"
                                HeaderText="Action" Text="Edit">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:HyperLinkField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="false" CommandArgument='<%#Eval("user_id") %>'
                                        CommandName="MyDelete" OnCommand="Delete_Row" Text="Delete" OnClientClick="Return Confirm('Are You Sure?');"></asp:LinkButton></ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connection_string %>"
                        SelectCommand="SELECT [user_id], [first_name], [middle_name], [last_name], [contact_no], [licence_type], [balance], [password] FROM [user_master]">
                    </asp:SqlDataSource>
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
