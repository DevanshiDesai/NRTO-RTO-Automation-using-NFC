using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
  
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["msg"] == "logout")
        {
            Session["a_id"] = "";
            lblshow.Text = "You are Logout Successfully";
            
        }

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string u = txtusername.Text;
        string p = txtpassword.Text;
       SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection_string"].ConnectionString);
        conn.Open();
        
        SqlCommand com = new SqlCommand("ad_login", conn);
        SqlDataAdapter da = new SqlDataAdapter(com);
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@username", u);
        com.Parameters.AddWithValue("@password", p);
        DataSet ds = new DataSet();
        da.Fill(ds, "ad_login");
        if (ds.Tables["ad_login"].Rows.Count == 0)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<script language ='javascript'> alert('Invalid Username and Password')</script>");
            txtusername.Text = "";
            txtpassword.Text = "";
        }
        else
        {
            int admin_id = Convert.ToInt32(ds.Tables["ad_login"].Rows[0]["admin_id"]);
            Session["a_id"] = admin_id;
            Response.Redirect("Home.aspx");
        }


    }
}