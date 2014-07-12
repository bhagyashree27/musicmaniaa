using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_change_password : System.Web.UI.Page
{
    bal bl = new bal();
    dal dl = new dal();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtadminname.Text = Session["adminname"].ToString();
    }

    protected void btnchange_Click(object sender, EventArgs e)
    {
        dl.admin_name = txtadminname.Text;
        dl.oldpassword = txtoldpassword.Text;
        dl.admin_password= txtnewpass.Text;

        bl.a_change_pwd(dl);
        lblresult.Text = "Password Change Successfully...........";
        
        
    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtadminname.Text = "";
        txtoldpassword.Text="";
        txtnewpass.Text = "";
        txtreptypass.Text = "";
       

    }
}