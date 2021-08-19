<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manage_traffic_police.aspx.cs" Inherits="manage_traffic_police" %>
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
                Manage Traffic Police</h1>
<table>
<tr>
<td>
    <h3><a href=Add_new_Traffic_Police.aspx>Add New Traffic police</a></h3>
</td>
</tr>
<tr>
<td>
   <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
</td>    
</tr>
</table>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" Width="874px" 
                >
                <Columns>
                    <asp:BoundField DataField="police_id" HeaderText="police_id" 
                        InsertVisible="False" ReadOnly="True" SortExpression="police_id" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="first_name" HeaderText="first_name" 
                        SortExpression="first_name" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="middle_name" HeaderText="middle_name" 
                        SortExpression="middle_name" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="last_name" HeaderText="last_name" 
                        SortExpression="last_name" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="contact_no" HeaderText="contact_no" 
                        SortExpression="contact_no" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="designation" HeaderText="designation" 
                        SortExpression="designation" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:HyperLinkField DataNavigateUrlFields="police_id" 
                        DataNavigateUrlFormatString="Add_new_Traffic_Police.aspx?Action=edit&amp;police_id={0}" 
                        HeaderText="Action" Text="Edit" >
                        

                    <ItemStyle HorizontalAlign="Center" />
                    </asp:HyperLinkField>
                        

                    <asp:TemplateField>
                    <ItemTemplate><asp:LinkButton ID="DeleteButton" runat="server"
                    CausesValidation="false" CommandArgument='<%#Eval("police_id") %>' CommandName="MyDelete" 
                    OnCommand="Delete_Row" Text="Delete" OnClientClick="Return Confirm('Are You Sure?');"></asp:LinkButton></ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:connection_string %>" 
                SelectCommand="SELECT [police_id], [first_name], [middle_name], [last_name], [contact_no], [designation] FROM [traffic_police_master]"></asp:SqlDataSource>
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
