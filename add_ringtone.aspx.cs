using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class add_ringtone : System.Web.UI.Page
{
    public dal dl = new dal();
    bal bl = new bal();
    public string filepath;
    public string file_path;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        filepath = Path.GetFileName(fileupload_ringtone.FileName);
        file_path = filepath.ToLower();
        if (file_path != "")
        {
            int size = fileupload_ringtone.FileBytes.Length / 1048576;

            string ext = Path.GetExtension(fileupload_ringtone.FileName);
            if (ext == ".mp3")
            {
                if (size < 4)
                {
                    int i = bl.insert_ringtone( file_path, txtrnm.Text, txtdesc.Text, 1);

                }
                else
                {
                    lblsizemsg.Text = "size must be lessthan 3MB";
                }
            }
            else
            {
                lblmsg.Text = "Not Valid";
            }
        }
        if (fileupload_ringtone.HasFile)
        {
            fileupload_ringtone.PostedFile.SaveAs(Server.MapPath("upload_ringtone/" + file_path.Replace(" ", "_").ToString()));
        }


        lblmsg.Text = "Ringtone Uploaded Successfully...";
        //Response.Redirect("ringtone_grid.aspx");
            
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {

    }
}