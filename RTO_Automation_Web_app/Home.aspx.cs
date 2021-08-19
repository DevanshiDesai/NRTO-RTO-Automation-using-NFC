using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    public int admin_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        admin_id = Convert.ToInt32(Session["a_id"]);
    }
}