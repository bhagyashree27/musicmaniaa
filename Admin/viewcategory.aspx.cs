using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_viewcategory : System.Web.UI.Page
{
    dal dl = new dal();
    bal bl = new bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView_category.DataSource = bl.select_category();
            GridView_category.DataBind();
        }
    }

    protected void GridView_category_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        GridView_category.PageIndex = e.NewPageIndex;
        GridView_category.DataSource = bl.select_category();
        GridView_category.DataBind();
    }

    protected void GridView_category_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        dl.cat_id = Convert.ToInt16(GridView_category.DataKeys[e.RowIndex].Value);
        TextBox t1 = (TextBox)GridView_category.Rows[e.RowIndex].FindControl("txtcatname");
        dl.category_name = t1.Text;
        bl.update_category(dl);
        GridView_category.EditIndex = -1;
        GridView_category.DataSource = bl.select_category();
        GridView_category.DataBind();
    }
    protected void GridView_category_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView_category.EditIndex = e.NewEditIndex;
        GridView_category.DataSource = bl.select_category();
        GridView_category.DataBind();
    }

    protected void GridView_category_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        dl.cat_id = Convert.ToInt16(GridView_category.DataKeys[e.RowIndex].Value);
        bl.delete_category(dl);
        GridView_category.DataSource = bl.select_category();
        GridView_category.DataBind();
    }

    protected void GridView_category_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView_category.EditIndex = -1;
        GridView_category.DataSource = bl.select_category();
        GridView_category.DataBind();
    }
}