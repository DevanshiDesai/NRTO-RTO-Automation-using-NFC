using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserLogin : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlDataAdapter da = null;
    DataSet ds = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["connection_string"].ConnectionString);
        da = new SqlDataAdapter("select * from user_master where email_id=@emailid and password=@password", con);
        da.SelectCommand.Parameters.AddWithValue("@emailid", txtemailid.Text);
        da.SelectCommand.Parameters.AddWithValue("@password", txtpassword.Text);
        ds = new DataSet();
        da.Fill(ds, "login");
        if (ds.Tables["login"].Rows.Count > 0)
        {
            int userid = (int)ds.Tables["login"].Rows[0]["user_id"];
            Session["userid"] = userid;
            Response.Redirect("UserPenaltyDetails.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<script language ='javascript'> alert('Invalid Emailid and Password')</script>");
            txtemailid.Text = "";
            txtpassword.Text = "";
        }
    }
}