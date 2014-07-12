using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Insert_Page : System.Web.UI.Page
{
    dal dl = new dal();
    bal bl = new bal();


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btncountry_Click(object sender, EventArgs e)
    {
        dl.country_name = txtcountry.Text;
        bl.insert_country(dl);
        lblresult.Text = "Country inserted Successfully...";
    }
}