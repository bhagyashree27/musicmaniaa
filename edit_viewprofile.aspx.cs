using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class edit_viewprofile : System.Web.UI.Page
{
    bal bl = new bal();
    dal dl = new dal();
    public DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dl.reg_id= Convert.ToInt16(Session["client"]);
            DetailsView1.DataSource =bl.select_profile(dl);
            DetailsView1.DataBind();
        }
    }

    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {
        DetailsView1.PageIndex = e.NewPageIndex;
        DetailsView1.DataSource = bl.select_registration(dl);
        DetailsView1.DataBind();
    }
    protected void dropcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList d7 = (DropDownList)DetailsView1.FindControl("DropDowncountry");
        DropDownList d8 = (DropDownList)DetailsView1.FindControl("DropDownstate");
        dl.country_id = Convert.ToInt16(d7.SelectedValue);
        d8.DataSource = bl.bind_state(dl);
        d8.DataBind();
        d8.Items.Insert(0, new ListItem("--------select--------"));
    }


    protected void dropstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList d8 = (DropDownList)DetailsView1.FindControl("DropDownstate");
        DropDownList d9 = (DropDownList)DetailsView1.FindControl("DropDowncity");
        dl.state_id = Convert.ToInt16(d8.SelectedValue);
        d9.DataSource = bl.bind_city(dl);
        d9.DataBind();
        d8.Items.Insert(0, new ListItem("--------select--------"));
    }


    protected void DetailsView1_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {
        string l1 = ((Label)DetailsView1.FindControl("Label1")).Text;
       string l2 = ((Label)DetailsView1.FindControl("Label2")).Text;
       string l3 = ((Label)DetailsView1.FindControl("Label3")).Text;
       string l4 = ((Label)DetailsView1.FindControl("Label4")).Text;
       string l5 = ((Label)DetailsView1.FindControl("Label5")).Text;
       string l6 = ((Label)DetailsView1.FindControl("Label6")).Text;
       string l7 = ((Label)DetailsView1.FindControl("Label7")).Text;
       string l8 = ((Label)DetailsView1.FindControl("Label8")).Text;
       string l9 = ((Label)DetailsView1.FindControl("Label9")).Text;
       string l10 = ((Label)DetailsView1.FindControl("Label10")).Text;
       string l11 = ((Label)DetailsView1.FindControl("Label11")).Text;
       
       DetailsView1.ChangeMode(e.NewMode);
       dl.reg_id = Convert.ToInt16(Session["client"]);
       DetailsView1.DataSource = bl.select_profile(dl);
       DetailsView1.DataBind();

       TextBox t1 = (TextBox)DetailsView1.FindControl("TextBox1");
       TextBox t2 = (TextBox)DetailsView1.FindControl("TextBox2");
       TextBox t4 = (TextBox)DetailsView1.FindControl("TextBox4");
       TextBox t5 = (TextBox)DetailsView1.FindControl("TextBox5");
       TextBox t6 = (TextBox)DetailsView1.FindControl("TextBox6");
       TextBox t10 = (TextBox)DetailsView1.FindControl("TextBox10");
       TextBox t11 = (TextBox)DetailsView1.FindControl("TextBox11");
       
       RadioButtonList r3 = (RadioButtonList)DetailsView1.FindControl("RadioButtonList1");

       DropDownList d7 = (DropDownList)DetailsView1.FindControl("dropcountry");

       d7.DataSource = bl.select_country();
       d7.DataBind();

       foreach (ListItem item in d7.Items)
       {
           if (item.Text == l7)
           {
               item.Selected = true;
           }
       }
       DropDownList d8 = (DropDownList)DetailsView1.FindControl("dropstate");
       d8.DataSource = bl.select_state();
       d8.DataBind();
       foreach (ListItem item in d8.Items)
       {
           if (item.Text == l8)
           {
               item.Selected = true;
           }
       }


       DropDownList d9 = (DropDownList)DetailsView1.FindControl("dropcity");
       d9.DataSource = bl.select_city();
       d9.DataBind();
       foreach (ListItem item in d9.Items)
       {
           if (item.Text == l9)
           {
               item.Selected = true;
           }
       }

   }
    protected void  DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
{
        dl.reg_id= Convert.ToInt16(Session["client"]);
       TextBox txtfirstname = (TextBox)DetailsView1.FindControl("TextBox2");
       TextBox txtlastname = (TextBox)DetailsView1.FindControl("TextBox3");
       TextBox txtaddress = (TextBox)DetailsView1.FindControl("TextBox4");
       
       RadioButtonList rbtngen = (RadioButtonList)DetailsView1.FindControl("RadioButtonList1");
       DropDownList dropcountry = (DropDownList)DetailsView1.FindControl("dropcountry");
       DropDownList dropstate = (DropDownList)DetailsView1.FindControl("dropstate");
       DropDownList dropcity = (DropDownList)DetailsView1.FindControl("dropcity");
        TextBox txtcontactno=(TextBox)DetailsView1.FindControl("TextBox8");
       TextBox mail_txt=(TextBox)DetailsView1.FindControl("TextBox9");
       TextBox txtusername= (TextBox)DetailsView1.FindControl("TextBox10");
       TextBox txtpassword = (TextBox)DetailsView1.FindControl("TextBox11");
       
       
       dl.firstname= txtfirstname.Text;
        dl.lastname=txtlastname.Text;
        dl.address = txtaddress.Text;
         dl.gender = rbtngen.SelectedValue;
      
       dl.country_id = Convert.ToInt16(dropcountry.SelectedValue);
       dl.state_id = Convert.ToInt16(dropstate.SelectedValue);
       dl.city_id = Convert.ToInt16(dropcity.SelectedValue);
        dl.contactno=txtcontactno.Text;
        dl.email=mail_txt.Text;
       dl.username = txtusername.Text;
       dl.password = txtpassword.Text;
       



       bl.update_registration(dl);
       DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);
       dl.reg_id = Convert.ToInt16(Session["client"]);
       DetailsView1.DataSource = bl.select_profile(dl);
       DetailsView1.DataBind();
   }
}



