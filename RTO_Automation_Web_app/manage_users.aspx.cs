using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class manage_users : System.Web.UI.Page
{
    public string admin_id;
    SqlConnection conn;
    public SqlDataAdapter da;
    public string cs = ConfigurationManager.ConnectionStrings["connection_string"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["msg"] == "add")
        {
            lblmessage.Text = "User Added Successfully";
        }
        else if (Request.QueryString["msg"] == "update")
        {
            lblmessage.Text = "User Updated Successfully";
        }
        if (Session["a_id"] == "")
        {
            Response.Redirect("Login.aspx?msg=logout");
        }
        admin_id = Convert.ToString(Session["a_id"]);
    }
    protected void Delete_Row(Object sender, CommandEventArgs e)
    {


        if (e.CommandName == "MyDelete")
            {
                conn = new SqlConnection(cs);
                conn.Open();
                da = new SqlDataAdapter();
                da.SelectCommand = new SqlCommand();
                da.SelectCommand.Connection = conn;
                da.SelectCommand.CommandText = "delete from user_master where user_id=" + e.CommandArgument + "";
                da.SelectCommand.CommandType = CommandType.Text;
                da.SelectCommand.ExecuteNonQuery();
                Response.Redirect("manage_users.aspx");


             }
    }
}