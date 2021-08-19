<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manage_penalties.aspx.cs" Inherits="manage_penalties" %>

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
                Manage Penalties</h1>
<table>
<tr>
<td>
    <h3><a href=Add_new_Penalty.aspx>Add New Penalty</a></h3>
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
                    <asp:BoundField DataField="O_Id" HeaderText="Offences Id" 
                        InsertVisible="False" ReadOnly="True" SortExpression="O_Id" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Offences" HeaderText="Offences" 
                        SortExpression="Offences" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Penalty" HeaderText="Penalty" 
                        SortExpression="Penalty" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    
                    <asp:HyperLinkField DataNavigateUrlFields="O_Id" 
                        DataNavigateUrlFormatString="Add_new_Penalty.aspx?Action=edit&amp;O_Id={0}" 
                        HeaderText="Action" Text="Edit" >
                        

                    <ItemStyle HorizontalAlign="Center" />
                    </asp:HyperLinkField>
                        

                    <asp:TemplateField>
                    <ItemTemplate><asp:LinkButton ID="DeleteButton" runat="server"
                    CausesValidation="false" CommandArgument='<%#Eval("O_Id") %>' CommandName="MyDelete" 
                    OnCommand="Delete_Row" Text="Delete" OnClientClick="Return Confirm('Are You Sure?');"></asp:LinkButton></ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:connection_string %>" 
                SelectCommand="SELECT [O_Id], [Offences], [Penalty] FROM [Penalty_master]"></asp:SqlDataSource>
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
