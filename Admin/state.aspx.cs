using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_state : System.Web.UI.Page
{
    dal dl = new dal();
    bal bl = new bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.DataSource = bl.select_country();
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("----Select----"));
        }
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        dl.state_name = TextBox1.Text;

        dl.country_id = Convert.ToInt16(DropDownList1.SelectedValue);
        bl.insert_state(dl);
        Label3.Text = "Inserted sucessfully";

    }
}