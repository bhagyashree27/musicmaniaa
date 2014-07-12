using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_updatecity : System.Web.UI.Page
{
    dal dl = new dal();
    bal bl = new bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["admin_name"] == null)
        //{
        //    Response.Redirect("admin login.aspx");
        //}
        if (!IsPostBack)
        {
            DropDownList1.DataSource = bl.select_state();
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("-----select----"));
            if (Request.QueryString["name"] == null && Request.QueryString["id"] == null && Request.QueryString["sid"] == null)
            {
                Response.Redirect("select_city.aspx");
            }
            else
            {
                DropDownList1.Text = Request.QueryString["sid"].ToString();
                TextBox1.Text = Request.QueryString["name"].ToString();
            }


        }
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        dl.state_id = Convert.ToInt16(Request.QueryString["sid"]);
        dl.city_id = Convert.ToInt16(Request.QueryString["id"]);
        dl.city_name = TextBox1.Text;
        bl.update_city(dl);
        Response.Redirect("viewcity.aspx");
    }
}