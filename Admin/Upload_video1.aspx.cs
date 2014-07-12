using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Upload_video1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection sqlconn = new SqlConnection("Data Source=SHREEJI-PC\\KESHA;Initial Catalog=C:\\USERS\\TEJAL\\DESKTOP\\MUSIC_MANIA_11_10_2012\\MM_SOLUTION\\MM_SITE\\APP_DATA\\MM_DB.MDF;Integrated Security=True");
        SqlCommand sqlcomm = new SqlCommand("Show_video", sqlconn);
        sqlcomm.CommandType = CommandType.StoredProcedure;
        sqlconn.Open();
        //SqlDataReader dr = sqlcomm.ExecuteReader();
        //if (dr.HasRows)
        //{
        //    GridView1.DataSource = dr;
        //    GridView1.DataBind();
        //    sqlconn.Close();
        //    dr.Close();
        //}
    }
    protected void btnInvoke_Click(object sender, EventArgs e)
    {
        string name = FileUpload1.PostedFile.FileName;
        string ext = System.IO.Path.GetExtension(this.FileUpload1.PostedFile.FileName);
        if (FileUpload1.PostedFile.ContentLength == 0)
        {

            Label1.Text = "Cannot upload zero length file";
        }

        if (ext == ".mp3" || ext == ".flv")
        {
            DateTime dt = DateTime.Now;
            string tme = dt.ToLongTimeString();
            string[] t = tme.Split(':');

            string y = "";
            foreach (string x in t)
            {
                y += x;
            }

            string aa = y + "_" + name;
            string location = Server.MapPath(" ") + "\\videos\\" + aa;
            FileUpload1.PostedFile.SaveAs(location);
            string loc = aa;

            SqlConnection sqlconn = new SqlConnection("Data Source=SHREEJI-PC\\KESHA;Initial Catalog=C:\\USERS\\TEJAL\\DESKTOP\\MUSIC_MANIA_11_10_2012\\MM_SOLUTION\\MM_SITE\\APP_DATA\\MM_DB.MDF;Integrated Security=True");
            SqlCommand sqlcomm = new SqlCommand("video_upload", sqlconn);
            sqlcomm.CommandType = CommandType.StoredProcedure;
            sqlcomm.Parameters.Add("@video_name", SqlDbType.VarChar, 2000).Value = txtvideoname.Text;
            sqlcomm.Parameters.Add("@video_loc", SqlDbType.VarChar, 5000).Value = loc;
            sqlconn.Open();
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();

            Label2.Text = "Audio Song uploaded Successfully";
        }
        else
        {
            Label2.Text = "please choose .mp3 file";
        }
    }
}