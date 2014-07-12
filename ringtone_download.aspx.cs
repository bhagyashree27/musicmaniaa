using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class ringtone_download : System.Web.UI.Page
{
    bal bl = new bal();
    dal dl = new dal();
    public DataTable dt_ringtone_download = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {

        fillcategory();
       
        
        
    }
    private void fillcategory()
    {
        DropDownList1.DataSource = bl.select_sub_category();
        DropDownList1.DataBind();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        dl.sub_cat_id = Convert.ToInt16(DropDownList1.SelectedValue);
        Response.Write(dl.sub_cat_id);
        DataList2.DataSource = bl.bindcategoriessong(dl);
        DataList2.DataBind();
    }
}