using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;


public partial class audio_download : System.Web.UI.Page
{
    public DataTable dt_audio_download = new DataTable();
    bal bl = new bal();
    dal dl = new dal();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataList2.DataSource = bl.bindmaterialvideo(dl);
        DataList2.DataBind();



    }
}