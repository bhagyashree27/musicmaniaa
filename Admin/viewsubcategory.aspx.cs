using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_viewsubcategory : System.Web.UI.Page
{
    dal dl = new dal();
    bal bl = new bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView_sub_category.DataSource = bl.select_sub_category();
            GridView_sub_category.DataBind();
        }
    }
    protected void GridView_sub_category_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView_sub_category.EditIndex = e.NewEditIndex;
        GridView_sub_category.DataSource = bl.select_sub_category();
        GridView_sub_category.DataBind();
    }

    protected void GridView_sub_category_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        dl.sub_cat_id = Convert.ToInt16(GridView_sub_category.DataKeys[e.RowIndex].Value);
        bl.delete_sub_category(dl);
        GridView_sub_category.DataSource = bl.select_sub_category();
        GridView_sub_category.DataBind();
    }

    protected void GridView_sub_category_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView_sub_category.PageIndex = e.NewPageIndex;
        GridView_sub_category.DataSource = bl.select_sub_category();
        GridView_sub_category.DataBind();
    }

    protected void GridView_sub_category_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView_sub_category.EditIndex = -1;
        GridView_sub_category.DataSource = bl.select_sub_category();
        GridView_sub_category.DataBind();
    }
    protected void GridView_sub_category_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        dl.sub_cat_id = Convert.ToInt16(GridView_sub_category.DataKeys[e.RowIndex].Value);
        TextBox t1 = (TextBox)GridView_sub_category.Rows[e.RowIndex].FindControl("txtsubcatname");
        dl.sub_cat_name = t1.Text;
        bl.update_sub_category(dl);
        GridView_sub_category.EditIndex = -1;
        GridView_sub_category.DataSource = bl.select_sub_category();
        GridView_sub_category.DataBind();
    }
    protected void GridView_sub_category_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
