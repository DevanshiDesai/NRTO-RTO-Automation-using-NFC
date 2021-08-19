using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserPenaltyDetails : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlDataAdapter da = null;
    DataSet ds = null;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["userid"] != null)
        {
            int userid = (int)Session["userid"];
            con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["connection_string"].ConnectionString);
            da = new SqlDataAdapter("select * from Penaltydetails_master where user_id=@userid order by penalty_id DESC ", con);
            da.SelectCommand.Parameters.AddWithValue("@userid",userid);
            ds = new DataSet();
            da.Fill(ds,"fill");
            GridView1.DataSource = ds.Tables["fill"];
            GridView1.DataBind();
        }

    }
}