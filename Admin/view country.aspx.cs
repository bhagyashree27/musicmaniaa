using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_view_country : System.Web.UI.Page
{
    dal dl = new dal();
    bal bl = new bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView_country.DataSource = bl.select_country();
            GridView_country.DataBind();
        }

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView_country.PageIndex = e.NewPageIndex;
        GridView_country.DataSource = bl.select_country();
        GridView_country.DataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        dl.country_id = Convert.ToInt16(GridView_country.DataKeys[e.RowIndex].Value);
        TextBox t1 = (TextBox)GridView_country.Rows[e.RowIndex].FindControl("textBox2");
        dl.country_name = t1.Text;
        bl.update_country(dl);
        GridView_country.EditIndex = -1;
        GridView_country.DataSource = bl.select_country();
        GridView_country.DataBind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView_country.EditIndex = e.NewEditIndex;
        GridView_country.DataSource = bl.select_country();
        GridView_country.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        dl.country_id = Convert.ToInt16(GridView_country.DataKeys[e.RowIndex].Value);
        bl.delete_country(dl);
        GridView_country.DataSource = bl.select_country();
        GridView_country.DataBind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView_country.EditIndex = -1;
        GridView_country.DataSource = bl.select_country();
        GridView_country.DataBind();
    }
}