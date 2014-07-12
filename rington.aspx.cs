using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class rington : System.Web.UI.Page
{
    bal bl = new bal();
    public DataTable dt_getringtone = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        dt_getringtone = bl.select_ringtone();
    }
}