using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class feedback : System.Web.UI.Page
{
    dal dl = new dal();
    bal bl = new bal();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        dl.fullname = txtfullname.Text;
        dl.re_address = txtreaddress.Text;
        dl.rate = rbtrate.SelectedValue;
        dl.mobile_no = txtmobileno.Text;
        dl.mail = txtmail.Text;
        dl.comment = txtcomment.Text;
        bl.insert_feedback(dl);
        lblmsg.Text = "Feedback Inserted Successfully....";
    }

    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtfullname.Text = "";
        txtreaddress.Text = "";
        rbtrate.SelectedValue = "";
        txtmobileno.Text = "";
        txtmail.Text = "";
        txtcomment.Text= "";
        

    }
}