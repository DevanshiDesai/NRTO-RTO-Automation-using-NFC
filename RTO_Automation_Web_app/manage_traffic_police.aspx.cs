using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class manage_traffic_police : System.Web.UI.Page
{
    public string admin_id;
    SqlConnection conn;
    public SqlDataAdapter da;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["msg"] == "add")
        {
            lblmessage.Text = "Traffic Police Added Successfully";
        }
        else if (Request.QueryString["msg"] == "update")
        {
            lblmessage.Text = "Traffic Police Updated Successfully";

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
            da.SelectCommand.CommandText = "delete from traffic_police_master where police_id=" + e.CommandArgument + "";
            da.SelectCommand.CommandType = CommandType.Text;
            da.SelectCommand.ExecuteNonQuery();
            SqlDataSource1.DataBind();
            //Response.Redirect("Manage_traffic_police.aspx");
        }
    }

}