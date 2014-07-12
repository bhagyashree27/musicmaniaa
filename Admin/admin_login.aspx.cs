using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Threading;

public partial class Admin_admin_login : System.Web.UI.Page
{
    dal dl = new dal();
    bal bl = new bal();
    public DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dl.admin_name = txtusername.Text;

        dl.admin_password = txtpassword.Text;
        dt = bl.admin_login1(dl);
        if (dt.Rows.Count > 0)
        {
            Session["adminname"] = dt.Rows[0]["adminname"].ToString();
            Thread.Sleep(3000);
            Response.Redirect("Home.aspx");
        }
        else
        {
            lblmsg.Text = "Wrong login Id or Password";
        }

    }
    protected void btnareset_Click(object sender, EventArgs e)
    {
        txtusername.Text = "";
        txtpassword.Text = "";
    }
}