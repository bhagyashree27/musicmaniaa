using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;


public partial class admin_videos : System.Web.UI.Page
{
    dal dl = new dal();
    bal bl = new bal();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillcategory();
            fillgrid();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dl.vid_title = TextBox1.Text;
        dl.sub_cat_id  = Convert.ToInt16(DropDownList1.SelectedValue);

        dl.vid_image = FileUpload3.FileName;
        {
            string path = Server.MapPath("~/vidimage" + "\\");
            string file = FileUpload3.FileName;

            string exe = Path.GetExtension(file);

            switch (exe.ToLower())
            {
                case ".jpg":
                    string concate = path + file;
                    FileUpload3.SaveAs(concate);
                    dl.vid_image = "~/vidimage/" + file;
                   // Label1.Text = "Advertise Image Uploaded Successfully";

                    break;
                case ".jpeg":
                    string concate1 = path + file;
                    FileUpload3.SaveAs(concate1);
                    dl.vid_image = "~/vidimage/" + file;
                   // Label1.Text = "Advertise Image Uploaded Successfully";

                    break;
                case ".gif":
                    string c = path + file;
                    FileUpload3.SaveAs(c);
                    dl.vid_image = "~/vidimage/" + file;
                   // Label1.Text = "Advertise Image Uploaded Successfully";
                    break;

                case ".mpeg":
                    string a = path + file;
                    FileUpload3.SaveAs(a);
                    dl.vid_image = "~/vidimage/" + file;
                   // Label1.Text = "Advertise Image Uploaded Successfully";

                    break;

                default:
                   // Label1.Text = "Failed";
                    break;
            }
        }



























        //if (FileUpload3.HasFile)
        //{
        //    string imgPath = "~//";
        //    imgPath += FileUpload1.FileName;
        //    FileUpload3.SaveAs(Server.MapPath(imgPath));

        //    dl.vid_image = imgPath;

        //}


        string path1 = Server.MapPath("~/vidimage/");
        string file1= FileUpload1.FileName;
        string ext = Path.GetExtension(file1);
        if (ext == ".mp4" || ext == ".flv" || ext == ".MP4" || ext == ".wmv" || ext == ".mkv" || ext == ".3gp")
        {
            string concate = path1 + file1;
            FileUpload1.SaveAs(concate);
            dl.vid_path = "~/vidimage/" + file1;
        }

        //if (FileUpload2.HasFile)
        //{
        //    string imgPath = "~/admin/vidimage/";
        //    imgPath += FileUpload1.FileName;
        //    FileUpload1.SaveAs(Server.MapPath(imgPath));

        //    dl.vid_image = imgPath;


        //}


       // string path1 = Server.MapPath("~//image" + "\\");
       // string file1 = FileUpload2.FileName;
       // string ext1 = Path.GetExtension(file1);
       // if (ext1 == ".jpg" || ext1 == ".jpeg" || ext1 == ".png" || ext1 == ".gif" || ext1 == ".bmp")
       // {
       //     string concate = path1 + file1;
       //     FileUpload2.SaveAs(concate);
       //     dl.vid_image = "~/image/" + file1;
       // }

       //string path = Server.MapPath("~/vidimage/" + "//");
       // string file = FileUpload1.FileName;
       // string ext = Path.GetExtension(file);
       //if (ext == ".mp4" || ext == ".flv" || ext == ".MP4" || ext == ".wmv" || ext == ".mkv" || ext == ".3gp")
       // {
       //   string concate = path + file;
       // FileUpload1.SaveAs(concate);
       //dl.vid_path = "~/vidimage/" + file;
       // }

       //string image = Server.MapPath("~//vidimage" + "//");
       //string f = FileUpload2.FileName;
       //string ex = Path.GetExtension(f);
       //if (ex == ".jpg" || ex == ".gif")
       //{
       //    string concate = image + f;
       //    FileUpload1.SaveAs(concate);
       //    dl.vid_image = "~//vidimage/" + f;
       //}
       //if (FileUpload1.HasFile)
       //{
       //    string imgPath = "~/pdfimage/";
       //    imgPath += FileUpload1.FileName;
       //    FileUpload1.SaveAs(Server.MapPath(imgPath));

       //    dl.pdf_image = imgPath;

       //}




       //if (FileUpload2.HasFile)
       //{
       //    string imgPath = "~/pdfimage/";
       //    imgPath += FileUpload2.FileName;
       //    FileUpload2.SaveAs(Server.MapPath(imgPath));

       //    dl.vid_image = imgPath;

       //}
        bl.add_vid(dl);
        Response.Write("<script>alert('vid Details Inserted Successfully')</script>");
        TextBox1.Text = "";

    }
    private void fillcategory()
    {
        DropDownList1.DataSource = bl.select_sub_category();
        DropDownList1.DataBind();
    }

    private void fillgrid()
    {
        GridView1.DataSource = bl.displayvid();
        GridView1.DataBind();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        dl.vid_id = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Value);
        dl.sub_cat_id = Convert.ToInt16(((DropDownList)GridView1.Rows[e.RowIndex].Cells[2].FindControl("drdlub")).SelectedValue);
        dl.vid_title = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].FindControl("txtvidtitle")).Text;

        FileUpload fup = (FileUpload)GridView1.Rows[e.RowIndex].Cells[4].FindControl("fileimage");
        if (fup.HasFile)
        {
            string imgPath = "~/vidimage/";
            imgPath += fup.FileName;
            fup.SaveAs(Server.MapPath(imgPath));

            dl.vid_image = imgPath;
        }
        else
        {

            string imgPath = ((Image)GridView1.Rows[e.RowIndex].Cells[4].FindControl("imgPro")).ImageUrl;
            dl.vid_image = imgPath;
        }


        FileUpload fpath = (FileUpload)GridView1.Rows[e.RowIndex].Cells[5].FindControl("filevidpath");
        if (fpath.HasFile)
        {
            string txtPath = "~/vidimage/";
            txtPath += fpath.FileName;
            fpath.SaveAs(Server.MapPath(txtPath));

            dl.vid_path = txtPath;

        }
        else
        {
            string txtPath = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].FindControl("txtvidpath")).Text;
            dl.vid_path = txtPath;
        }
        bl.update_vid(dl);
        GridView1.EditIndex = -1;
        fillgrid();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        fillgrid();
        DropDownList drp = (DropDownList)GridView1.Rows[e.NewEditIndex].Cells[2].FindControl("drdlub");
        drp.Items.Clear();
        drp.Items.Add(new ListItem("---Select---", "-1"));
        drp.AppendDataBoundItems = true;

        drp.DataSource = bl.select_sub_category(); ;
        drp.DataTextField = "sub_cat_name";
        drp.DataValueField = "sub_cat_id";
        drp.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int vid_id = Convert.ToInt16(e.Keys[0]); //it will take the primary key of row
        bl.delete_vid(vid_id);
        fillgrid();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        fillgrid();
    }
    protected void GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        fillgrid();
    }
  
}