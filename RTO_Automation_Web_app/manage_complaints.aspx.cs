using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class manage_complaints : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlDataAdapter da = null;
    DataSet ds = null;
    public string admin_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["a_id"] == "")
        {
            Response.Redirect("Login.aspx?msg=logout");
        }
        admin_id = Convert.ToString(Session["a_id"]);
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
  
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {

        string penaltyid = ((Label)GridView1.Rows[GridView1.EditIndex].FindControl("Label1")).Text;
        string status = ((DropDownList)GridView1.Rows[GridView1.EditIndex].FindControl("DropDownList1")).SelectedItem.ToString();

        con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["connection_string"].ConnectionString);
        da = new SqlDataAdapter("update Penaltydetails_master set status=@status where penalty_id=@penaltyid", con);
        da.SelectCommand.Parameters.AddWithValue("@penaltyid", int.Parse(penaltyid));
        da.SelectCommand.Parameters.AddWithValue("@status", status);
        ds = new DataSet();
        da.Fill(ds,"updatetb");
        GridView1.EditIndex = -1;
        GridView1.DataBind();
    }
}