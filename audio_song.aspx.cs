using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class audio_song : System.Web.UI.Page
{
    bal bl = new bal();
    public DataTable dt_getsong = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {



        //dt_count = mainclass.get_count(48);
    }
    protected void get_songs()
    {
        dt_getsong = bl.select_mp3upload();
    }
}