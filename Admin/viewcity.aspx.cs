using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_viewcity : System.Web.UI.Page
{
    dal dl = new dal();
    bal bl = new bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView_city.DataSource = bl.select_city();
            GridView_city.DataBind();
        }

    }
    protected void GridView_city_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {
        GridView_city.PageIndex = e.NewPageIndex;
        GridView_city.DataSource = bl.select_city();
        GridView_city.DataBind();

    }

    protected void GridView_city_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
    {
        GridView_city.EditIndex = -1;
        GridView_city.DataSource = bl.select_city();
        GridView_city.DataBind();
    }

    protected void GridView_city_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        dl.city_id = Convert.ToInt16(GridView_city.DataKeys[e.RowIndex].Value);
        bl.delete_city(dl);
        GridView_city.DataSource = bl.select_city();
        GridView_city.DataBind();
    }

    protected void GridView_city_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
        dl.city_id = Convert.ToInt16(GridView_city.DataKeys[e.RowIndex].Value);
        TextBox t1 = (TextBox)GridView_city.Rows[e.RowIndex].FindControl("txtcityname");
        dl.city_name = t1.Text;
        bl.update_city(dl);
        GridView_city.EditIndex = -1;
        GridView_city.DataSource = bl.select_city();
        GridView_city.DataBind();

    }

    protected void GridView_city_RowEditing1(object sender, GridViewEditEventArgs e)
    {
        GridView_city.EditIndex = e.NewEditIndex;
        GridView_city.DataSource = bl.select_city();
        GridView_city.DataBind();
    }
}
