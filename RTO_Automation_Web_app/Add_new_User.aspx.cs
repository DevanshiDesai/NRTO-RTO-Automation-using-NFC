using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class Add_new_User : System.Web.UI.Page
{
    public string user_id, admin_id,message;
    SqlConnection conn;
    public SqlDataAdapter da;
    public SqlCommand com;
    string cs = ConfigurationManager.ConnectionStrings["connection_string"].ConnectionString; 
        protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["a_id"]=="")
        {
            Response.Redirect("Login.aspx?msg=logout");
        }
        admin_id = Convert.ToString(Session["a_id"]);
            
            if (Request.QueryString["Action"] == "edit" && !IsPostBack)
        {
            user_id = Request.QueryString["user_id"];
            conn = new SqlConnection(cs);
            conn.Open();
            da = new SqlDataAdapter();
            da.SelectCommand = new SqlCommand();
            da.SelectCommand.Connection = conn;
            da.SelectCommand.CommandText="user_select";
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@user_id",user_id);
            DataSet ds = new DataSet();
            da.Fill(ds,"user_select");
            txtfirst_name.Text = Convert.ToString(ds.Tables["user_select"].Rows[0]["first_name"]);
            txtmiddle_name.Text = Convert.ToString(ds.Tables["user_select"].Rows[0]["middle_name"]);
            txtlast_name.Text = Convert.ToString(ds.Tables["user_select"].Rows[0]["last_name"]);
            txtbirth_date.Text = Convert.ToString(ds.Tables["user_select"].Rows[0]["date_of_birth"]);
            txtaddress.Text = Convert.ToString(ds.Tables["user_select"].Rows[0]["address"]);
            txtcontact_no.Text = Convert.ToString(ds.Tables["user_select"].Rows[0]["contact_no"]);
            txtemail_id.Text = Convert.ToString(ds.Tables["user_select"].Rows[0]["email_id"]);
            txtlicence_no.Text = Convert.ToString(ds.Tables["user_select"].Rows[0]["licence_type"]);
            txtbalance.Text = Convert.ToString(ds.Tables["user_select"].Rows[0]["balance"]);

        }

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["Action"] == "edit")
        {
            user_id = Request.QueryString["user_id"];
            conn = new SqlConnection(cs);
            conn.Open();
            da = new SqlDataAdapter();
            da.SelectCommand = new SqlCommand();
            da.SelectCommand.Connection = conn;
            da.SelectCommand.CommandText = "user_update";
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@user_id", user_id);
            da.SelectCommand.Parameters.AddWithValue("@first_name", txtfirst_name.Text);
            da.SelectCommand.Parameters.AddWithValue("@middle_name", txtmiddle_name.Text);
            da.SelectCommand.Parameters.AddWithValue("@last_name", txtlast_name.Text);
            da.SelectCommand.Parameters.AddWithValue("@date_of_birth", Convert.ToDateTime(txtbirth_date.Text));
            da.SelectCommand.Parameters.AddWithValue("@address", txtaddress.Text);
            da.SelectCommand.Parameters.AddWithValue("@contact_no", txtcontact_no.Text);
            da.SelectCommand.Parameters.AddWithValue("@email_id", txtemail_id.Text);
            da.SelectCommand.Parameters.AddWithValue("@licence_type", txtlicence_no.Text);
            da.SelectCommand.Parameters.AddWithValue("@balance", Convert.ToString(txtbalance.Text));
            da.SelectCommand.Parameters.AddWithValue("@password",txtpassword.Text);
            da.SelectCommand.ExecuteNonQuery();

            Response.Redirect("manage_users.aspx?msg=update");





        }

        else
        {

            string image_url = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("User_Images/" + image_url));
            conn = new SqlConnection(cs);
            conn.Open();
            da = new SqlDataAdapter();
            da.SelectCommand = new SqlCommand();
            da.SelectCommand.Connection = conn;
            da.SelectCommand.CommandText = "user_insert";
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@first_name", txtfirst_name.Text);
            da.SelectCommand.Parameters.AddWithValue("@middle_name", txtmiddle_name.Text);
            da.SelectCommand.Parameters.AddWithValue("@last_name", txtlast_name.Text);
            da.SelectCommand.Parameters.AddWithValue("@date_of_birth", Convert.ToDateTime(txtbirth_date.Text));
            da.SelectCommand.Parameters.AddWithValue("@address", txtaddress.Text);
            da.SelectCommand.Parameters.AddWithValue("@contact_no", txtcontact_no.Text);
            da.SelectCommand.Parameters.AddWithValue("@email_id", txtemail_id.Text);
            da.SelectCommand.Parameters.AddWithValue("@licence_type", txtlicence_no.Text);
            da.SelectCommand.Parameters.AddWithValue("@image_path", "User_Images" + image_url);
            da.SelectCommand.Parameters.AddWithValue("@balance", txtbalance.Text);
            da.SelectCommand.Parameters.AddWithValue("@password", txtpassword.Text);
            da.SelectCommand.Parameters.Add("@error", SqlDbType.VarChar, 500);
            da.SelectCommand.Parameters["@error"].Direction = ParameterDirection.Output;
            da.SelectCommand.ExecuteNonQuery();
            message = da.SelectCommand.Parameters["@error"].Value.ToString();
            conn.Close();
            if (message.Trim() == "User Added Successfully")
            {
                Response.Redirect("manage_users.aspx?msg=add");

            }
            else
            {

                lblmessage.Text = "Email Id Already Exists";
            }
        }
        


    }
   
    
}