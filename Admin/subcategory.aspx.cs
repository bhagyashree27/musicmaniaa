using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_subcategory : System.Web.UI.Page
{
    dal dl = new dal();
    bal bl = new bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.DataSource = bl.select_category();
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("----Select----"));
        }
    }

   
       protected void btninsert_Click(object sender, EventArgs e)
       {
           dl.cat_id = Convert.ToInt16(DropDownList1.SelectedValue);
           dl.sub_cat_name = txtsubcat.Text;
           bl.insert_sub_category(dl);
           lblmsg.Text = "Inserted sucessfully...........";
       }
}
