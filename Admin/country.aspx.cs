using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_country : System.Web.UI.Page
{
    dal dl = new dal();
    bal bl = new bal();
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        dl.country_name = TextBox1.Text;
        bl.insert_country(dl);
        Label3.Text = "Country inserted sucessfully";

    }
}