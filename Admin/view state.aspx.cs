using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_view_state : System.Web.UI.Page
{
    dal dl = new dal();
    bal bl = new bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView_state.DataSource = bl.select_state();
            GridView_state.DataBind();
        }
    }

    protected void GridView_state_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView_state.EditIndex = e.NewEditIndex;
        GridView_state.DataSource = bl.select_state();
        GridView_state.DataBind();
    }

    protected void GridView_state_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        dl.state_id = Convert.ToInt16(GridView_state.DataKeys[e.RowIndex].Value);
        TextBox t1 = (TextBox)GridView_state.Rows[e.RowIndex].FindControl("TextBox2");
        dl.state_name = t1.Text;
        bl.update_state(dl);
        GridView_state.EditIndex = -1;
        GridView_state.DataSource = bl.select_state();
        GridView_state.DataBind();
    }

    protected void GridView_state_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        dl.state_id = Convert.ToInt16(GridView_state.DataKeys[e.RowIndex].Value);
        bl.delete_state(dl);
        GridView_state.DataSource = bl.select_state();
        GridView_state.DataBind();
    }

    protected void GridView_state_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView_state.PageIndex = e.NewPageIndex;
        GridView_state.DataSource = bl.select_state();
        GridView_state.DataBind();
    }

    protected void GridView_state_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView_state.EditIndex = -1;
        GridView_state.DataSource = bl.select_state();
        GridView_state.DataBind(); 
    }
}

    