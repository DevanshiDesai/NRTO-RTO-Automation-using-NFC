using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class manage_penalties : System.Web.UI.Page
{
    public string admin_id;
    SqlConnection conn;
    SqlDataAdapter da;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["msg"] == "add")
        {
            lblmessage.Text = "Offence Added Successfully";
        }
        else if (Request.QueryString["msg"] == "update")
        {
            lblmessage.Text = "Offence Updated Successfully";

        }
        if (Session["a_id"] == "")
        {
            Response.Redirect("Login.aspx?msg=logout");
        }
        admin_id = Convert.ToString(Session["a_id"]);
    }

    protected void Delete_Row(Object sender, CommandEventArgs e)
    {
        if ((e.CommandName == "MyDelete"))
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection_string"].ConnectionString);
            conn.Open();
            da = new SqlDataAdapter();
            da.SelectCommand = new SqlCommand();
            da.SelectCommand.Connection = conn;
            da.SelectCommand.CommandText = "delete from Penalty_master where O_Id=" + e.CommandArgument + "";
            da.SelectCommand.CommandType = CommandType.Text;
            da.SelectCommand.ExecuteNonQuery();
            Response.Redirect("manage_penalties.aspx");
        }
    }
}