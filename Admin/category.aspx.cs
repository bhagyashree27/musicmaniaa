using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_category : System.Web.UI.Page
{
    dal dl = new dal();
    bal bl = new bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btninsert_Click(object sender, EventArgs e)
    {
        
        dl.category_name =txtcategory.Text;
        bl.insert_category(dl);
        Label.Text = "Category inserted sucessfully";
    }
}