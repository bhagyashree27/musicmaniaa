using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_view_property : System.Web.UI.Page
{
    dal dl = new dal();
    bal bl = new bal();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView1.DataSource = bl.bind_grid();
            GridView1.DataBind();


        }
    }
   
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataSource = bl.bind_grid();
        GridView1.DataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        dl.propety_type_id = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Value);
        TextBox t1 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
        dl.property_type_name = t1.Text;
        bl.update_property(dl);
        GridView1.EditIndex = -1;
        GridView1.DataSource = bl.bind_grid();
        GridView1.DataBind();

        
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GridView1.DataSource = bl.bind_grid();
        GridView1.DataBind();

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        dl.propety_type_id = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Value);
        bl.delete_property(dl);
        GridView1.DataSource = bl.bind_grid();
        GridView1.DataBind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GridView1.DataSource = bl.bind_grid();
        GridView1.DataBind();
    }
}