using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewdetailvid : System.Web.UI.Page
{
    bal bl = new bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("c_login.aspx");
        }
        else
            {
                FormView1.DataSource = bl.getvideobyid(Convert.ToInt16(Request.QueryString["vid_id"].ToString()));
                FormView1.DataBind();
            }
            
    }
    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}