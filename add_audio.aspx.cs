using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class add_audio : System.Web.UI.Page
{
    dal dl = new dal();
    bal bl = new bal();
    public DataTable dt_mp3nm = new DataTable();
    public DataTable dt_usernm = new DataTable();
    public string filepath;
    public string file_path;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        dl.mp3upload_nm = txtsnm.Text;
        dl.mp3_desc = txtdesc.Text;
        dl.mp3_path=fileupload_song .FileName;
        {
            string path = Server.MapPath("~/upload_mp3" + "\\");
            string file = fileupload_song.FileName;

            string exe = Path.GetExtension(file);

            switch (exe.ToLower())
            {
                case ".mp3":
                    string concate = path + file;
                    fileupload_song.SaveAs(concate);
                    dl.mp3_path = "~/upload_mp3/" + file;
                   // Label1.Text = "Advertise Image Uploaded Successfully";

                    break;
                case ".flv":
                    string concate1 = path + file;
                    fileupload_song.SaveAs(concate1);
                    dl.mp3_path = "~/upload_mp3/" + file;
                   // Label1.Text = "Advertise Image Uploaded Successfully";

                    break;
              
                default:
                    //Label1.Text = "Failed";
                    break;
            }
        }
        bl.insert_mp3upload(dl);
        lblmsg.Text = "Audio song Uploaded Successfully...";

    }
    protected void btnreset_Click(object sender, EventArgs e)
    {

    }
}