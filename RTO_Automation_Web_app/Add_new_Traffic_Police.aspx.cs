using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

public partial class Add_new_Traffic_Police : System.Web.UI.Page
{
    public string police_id,admin_id,message;
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
        if(Request.QueryString["Action"]=="edit" && this.IsPostBack==false)
        {
            btnCancel.Enabled = true;
            police_id = Request.QueryString["police_id"];
            conn = new SqlConnection(cs);
            conn.Open();
            da = new SqlDataAdapter();
            da.SelectCommand = new SqlCommand();
            da.SelectCommand.Connection = conn;
            da.SelectCommand.CommandText = "traffic_police_select";
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@police_id", police_id);
            DataSet ds = new DataSet();
            da.Fill(ds, "traffic_police_select");
            txtfirst_name.Text = Convert.ToString(ds.Tables["traffic_police_select"].Rows[0]["first_name"]);
            txtmiddle_name.Text = Convert.ToString(ds.Tables["traffic_police_select"].Rows[0]["middle_name"]);
            txtlast_name.Text = Convert.ToString(ds.Tables["traffic_police_select"].Rows[0]["last_name"]);
            txtaddress.Text = Convert.ToString(ds.Tables["traffic_police_select"].Rows[0]["address"]);
            txtcontact_no.Text = Convert.ToString(ds.Tables["traffic_police_select"].Rows[0]["contact_no"]);
            txtemail_id.Text = Convert.ToString(ds.Tables["traffic_police_select"].Rows[0]["email_id"]);
            txtDesignation.Text=Convert.ToString(ds.Tables["traffic_police_select"].Rows[0]["designation"]);
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["Action"] == "edit")
        {
            police_id = Request.QueryString["police_id"];
            conn = new SqlConnection(cs);
            conn.Open();
            da = new SqlDataAdapter();
            da.SelectCommand = new SqlCommand();
            da.SelectCommand.Connection = conn;
            da.SelectCommand.CommandText = "traffic_police_update";
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@police_id", police_id);
            da.SelectCommand.Parameters.AddWithValue("@first_name", txtfirst_name.Text);
            da.SelectCommand.Parameters.AddWithValue("@middle_name", txtmiddle_name.Text);
            da.SelectCommand.Parameters.AddWithValue("@last_name", txtlast_name.Text);
            da.SelectCommand.Parameters.AddWithValue("@address", txtaddress.Text);
            da.SelectCommand.Parameters.AddWithValue("@contact_no", txtcontact_no.Text);
            da.SelectCommand.Parameters.AddWithValue("@email_id", txtemail_id.Text);
            da.SelectCommand.Parameters.AddWithValue("@designation", txtDesignation.Text);
            da.SelectCommand.ExecuteNonQuery();
            Response.Redirect("manage_traffic_police.aspx?msg=update");


        }


        else
        {

            var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            var stringChars = new char[5];
            var random = new Random();

            for (int i = 0; i < stringChars.Length; i++)
            {
                stringChars[i] = chars[random.Next(chars.Length)];
            }
            string pass = new String(stringChars);
            string password = "RTO" + pass;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection_string"].ConnectionString);
            conn.Open();
            SqlCommand com = new SqlCommand("traffic_police_insert", conn);
            SqlDataAdapter da = new SqlDataAdapter(com);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@first_name", txtfirst_name.Text);
            com.Parameters.AddWithValue("@middle_name", txtmiddle_name.Text);
            com.Parameters.AddWithValue("@last_name", txtlast_name.Text);
            com.Parameters.AddWithValue("@address", txtaddress.Text);
            com.Parameters.AddWithValue("@contact_no", txtcontact_no.Text);
            com.Parameters.AddWithValue("@email_id", txtemail_id.Text);
            com.Parameters.AddWithValue("@password", password);
            com.Parameters.AddWithValue("@designation", txtDesignation.Text);
            com.Parameters.Add("@error", SqlDbType.VarChar, 500);
            com.Parameters["@error"].Direction = ParameterDirection.Output;
            da.SelectCommand.ExecuteNonQuery();
            message = da.SelectCommand.Parameters["@error"].Value.ToString();
            conn.Close();

            if (message == "Traffic Police Added Sucessfully")
            {
                try
                {
                    SmtpClient SmtpServer = new SmtpClient();
                    MailMessage mail = new MailMessage();
                    SmtpServer.Credentials = new System.Net.NetworkCredential("rtoautomationnfc@gmail.com", "rt0nfc123");
                    SmtpServer.Port = 587;
                    SmtpServer.EnableSsl = true;
                    SmtpServer.Host = "smtp.gmail.com";
                    mail = new MailMessage();
                    mail.From = new MailAddress("rtoautomationnfc@gmail.com");

                    mail.To.Add(txtemail_id.Text);
                    mail.Subject = "RTO Automation Using NFC Registration";
                    mail.Body = "Hi  " + txtemail_id.Text + " Welcome To RTO Automation using NFC Site. Your Login Details will be, Username: " + txtemail_id.Text + "and password will be" + password + ".";
                    SmtpServer.Send(mail);
                }
                catch (Exception ex)
                {
                    Console.WriteLine("{0} Exception caught.", ex);
                }
                Response.Redirect("manage_traffic_police.aspx?msg=add");
            }
            else
            {
                lblmessage.Text ="Email ID Already Exists" ;

            }
        }
        
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("manage_traffic_police.aspx");
    }
}