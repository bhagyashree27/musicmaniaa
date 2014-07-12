

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_city : System.Web.UI.Page
{
    dal dl = new dal();
    bal bl = new bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList2.DataSource = bl.select_state();
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new ListItem("----Select----"));
        }



    }
   
    protected void btninsert_Click(object sender, EventArgs e)
    {
        dl.city_name = TextBox1.Text;
        dl.state_id = Convert.ToUInt16(DropDownList2.SelectedValue);
        bl.insert_city(dl);
        lblms.Text = "inserted sucessfully";

    }
}