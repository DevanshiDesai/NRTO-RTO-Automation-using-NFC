<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manage_complaints.aspx.cs"
    Inherits="manage_complaints" %>

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
    </head>
<body>
    <form id="form1" runat="server">
    <div id="main" align="center">
        <uc1:header ID="header" runat="server"></uc1:header>
        <div id="site_content">
            <div id="content">
                <div class="content_item">
                    <h1>
                        View Complaints</h1>
                    <table>
                        <tr>
                            <td>
                                <%-- <h3><a href=Add_new_User.aspx>Add New User</a></h3>--%>
                            </td>
                        </tr>
                    </table>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                        Width="874px">
                        <Columns>
                            <asp:TemplateField HeaderText="Penalty Id" InsertVisible="False" 
                                SortExpression="penalty_id">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("penalty_id") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("penalty_id") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="police_id" HeaderText="Police Id" SortExpression="police_id">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="user_id" HeaderText="User Id" SortExpression="user_id">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="offence" HeaderText="Offence" SortExpression="offence">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="penalty_amount" HeaderText="Penalty Amount" SortExpression="fine_amount">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="datetime" HeaderText="Datetime" SortExpression="datetime">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="location" HeaderText="location" SortExpression="location">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <%--<asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:DropDownList ID="dropdown1" runat="server">
                                        <listitem>Complete</listitem>
                                        <listitem>Pending</listitem>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>

                                </ItemTemplate>
                            </asp:TemplateField>--%>
                            <asp:TemplateField HeaderText="Status" SortExpression="status">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem>Complete</asp:ListItem>
                                        <asp:ListItem>Pending</asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                        CommandName="Edit" Text="Edit"></asp:LinkButton>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                                        CommandName="Update" onclick="LinkButton1_Click1" Text="Update"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                        CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                </EditItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connection_string %>"
                        SelectCommand="SELECT  penalty_id,police_id,user_id,offence,penalty_amount,Convert(Varchar(11),datetime,103)as datetime,location,status FROM [Penaltydetails_master]">
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
