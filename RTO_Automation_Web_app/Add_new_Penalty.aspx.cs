using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Add_new_Penalty : System.Web.UI.Page
{
    public string admin_id,offences_id;
    SqlConnection conn;
    public SqlCommand cmd;
    public SqlDataAdapter da;
    public string cs = ConfigurationManager.ConnectionStrings["connection_string"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["a_id"] == "")
        {
            Response.Redirect("Login.aspx?msg=logout");
        }

        admin_id = Convert.ToString(Session["a_id"]);
        if (Request.QueryString["Action"] == "edit" && this.IsPostBack == false)
        {
            btnCancel.Enabled = true;
            offences_id = Request.QueryString["O_Id"];
            conn = new SqlConnection(cs);
            conn.Open();
            da = new SqlDataAdapter();
            da.SelectCommand = new SqlCommand();
            da.SelectCommand.Connection = conn;
            da.SelectCommand.CommandText = "Select * from Penalty_master where O_Id=@oid";
            da.SelectCommand.Parameters.AddWithValue("@oid",offences_id);
            DataSet ds = new DataSet();
            da.Fill(ds, "offence_select");

            txtoffences.Text = ds.Tables["offence_select"].Rows[0]["Offences"].ToString();
            txtpenalty_fine.Text = ds.Tables["offence_select"].Rows[0]["Penalty"].ToString();

        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["Action"] == "edit")
        {
            offences_id = Request.QueryString["O_Id"];
            conn = new SqlConnection(cs);
            conn.Open();
            da = new SqlDataAdapter();
            da.SelectCommand = new SqlCommand();
            da.SelectCommand.Connection = conn;
            da.SelectCommand.CommandText = "Update Penalty_master set Offences=@offences,Penalty=@penalty where O_Id=@oid";
            da.SelectCommand.Parameters.AddWithValue("@oid", offences_id);
            da.SelectCommand.Parameters.AddWithValue("@offences", txtoffences.Text);
            da.SelectCommand.Parameters.AddWithValue("@penalty", txtpenalty_fine.Text);
            da.SelectCommand.ExecuteNonQuery();
            Response.Redirect("manage_penalties.aspx?msg=update");
        }
        else
        {
            conn = new SqlConnection(cs);
            conn.Open();
            da = new SqlDataAdapter();
            da.SelectCommand = new SqlCommand();
            da.SelectCommand.Connection = conn;
            da.SelectCommand.CommandText = "insert into Penalty_master values(@offences,@penalty)";
            da.SelectCommand.Parameters.AddWithValue("@offences", txtoffences.Text);
            da.SelectCommand.Parameters.AddWithValue("@penalty", txtpenalty_fine.Text);
            da.SelectCommand.ExecuteNonQuery();
            Response.Redirect("manage_penalties.aspx?msg=add");
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage_penalties.aspx");
    }
}