using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_prop1 : System.Web.UI.Page
{
    dal dl = new dal();
    bal bl = new bal();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    

    protected void btn_insert_Click(object sender, EventArgs e)
    {
        dl.property_type_name = TextBox1.Text;
        bl.insert_property(dl);
        Label3.Text = "inserted sucessfully";
    }
}