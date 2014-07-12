using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Threading;

public partial class c_login : System.Web.UI.Page
{
    dal dl = new dal();
    bal bl = new bal();
    DataTable dt1=new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
protected void  Button1_Click(object sender, EventArgs e)
{
    dl.username = txtusername.Text;
    dl.password = txtpassword.Text;
    dt1 = new DataTable();
    dt1 = bl.client_login(dl);
    if (dt1.Rows.Count > 0)
    {
        Session["client"] = dt1.Rows[0]["reg_id"];
        Session["username"] = txtusername.Text;
        Lblreslt.Text = "valid";
        Response.Redirect("Default.aspx");
    }
    else
    {
        Lblreslt.Text = "username or password are not valid";
    }

}
protected void Btnreset_Click(object sender, EventArgs e)
{
    Response.Redirect("registration.aspx");
}
}