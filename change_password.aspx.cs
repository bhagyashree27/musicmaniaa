using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class change_password : System.Web.UI.Page
{
    bal bl = new bal();
    dal dl = new dal();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtusername.Text = Session["username"].ToString();
    }

    protected void btnchange_Click(object sender, EventArgs e)
    {
        dl.username = txtusername.Text;
        dl.opass = txtopass.Text;
        dl.password = txtnewpass.Text;
        bl.c_change_pwd(dl);
        lblresult.Text = "Password Change Successfully...........";
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtusername.Text = "";
        txtopass.Text = "";
        txtnewpass.Text = "";
        txtreptypass.Text = "";

    }
}