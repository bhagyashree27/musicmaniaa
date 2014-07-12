using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_updatestate : System.Web.UI.Page
{
    dal dl = new dal();
    bal bl = new bal();

    protected void Page_Load(object sender, EventArgs e)
    {
      //  if (Session["admin_name"] == null)
        //{
         //   Response.Redirect("admin login.aspx");
        //}
        if (!IsPostBack)
        {
            DropDownList1.DataSource = bl.bindcountry_grid();
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("----Select----"));
            if (Request.QueryString["name"] == null && Request.QueryString["id"] == null && Request.QueryString["cid"] == null)
            {
                Response.Redirect("view state.aspx");
            }
            else
            {
                DropDownList1.Text = Request.QueryString["cid"].ToString();
                TextBox1.Text = Request.QueryString["name"].ToString();
            }
        }
       

    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        dl.country_id = Convert.ToInt16(Request.QueryString["cid"]);
        dl.state_id = Convert.ToInt16(Request.QueryString["id"]);
        dl.state_name = TextBox1.Text;
        bl.update_state(dl);

        Response.Redirect("view state.aspx");
    }
}