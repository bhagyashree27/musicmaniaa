using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Threading;

public partial class registration : System.Web.UI.Page
{
    dal dl = new dal();
    bal bl = new bal();
    public DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getcountry();
            DropDowncity.Items.Insert(0, new ListItem("---select---"));
            DropDownstate.Items.Insert(0, new ListItem("---select---"));
        }
    }
    public void getcountry()
    {
        dt = bl.select_country();
        DropDowncountry.DataSource = dt;
        DropDowncountry.DataTextField = "country_name";
        DropDowncountry.DataValueField = "country_id";
        DropDowncountry.DataBind();
        DropDowncountry.Items.Insert(0, new ListItem("---select---"));
    }



    protected void DropDowncountry_SelectedIndexChanged(object sender, EventArgs e)
    {
       

    }
    protected void DropDownstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        dl.state_id = Convert.ToInt16(DropDownstate.SelectedValue);
        DropDowncity.DataSource = bl.bind_city(dl);
        DropDowncity.DataBind();
        DropDowncity.Items.Insert(0, new ListItem("---select---"));
    }


    protected void DropDowncity_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void Btnsubmit_Click(object sender, EventArgs e)
    {
        dl.firstname = txtfirstname.Text;
        dl.lastname = txtlastname.Text;
       
        dl.gender = rbtngen.SelectedValue;
        dl.city_id = Convert.ToInt16(DropDowncity.SelectedValue);
        dl.state_id = Convert.ToInt16(DropDowncountry.SelectedValue);
        dl.country_id = Convert.ToInt16(DropDowncountry.SelectedValue);
        dl.contactno = txtcontactno.Text;
        dl.e_mail = email_txt.Text;
        dl.username = txtusername.Text;
        dl.password = txtpassword.Text;
        bl.insert_registrartion(dl);
        lblresult.Text = "Registration Successfully...........";
        txtfirstname.Text = "";
        txtlastname.Text = "";
        txtcontactno.Text = "";
        email_txt.Text = "";
        txtusername.Text = "";
        txtpassword.Text = "";
    }
    protected void DropDownstate_SelectedIndexChanged1(object sender, EventArgs e)
    {
        dl.state_id = Convert.ToInt16(DropDownstate.SelectedValue);
        DropDowncity.DataSource = bl.bind_city(dl);
        DropDowncity.DataBind();
        DropDowncity.Items.Insert(0, new ListItem("---select---"));
    }
    protected void DropDowncountry_SelectedIndexChanged1(object sender, EventArgs e)
    {
        dl.country_id = Convert.ToInt16(DropDowncountry.SelectedValue);
        DropDownstate.DataSource = bl.bind_state(dl);
        DropDownstate.DataBind();
        DropDownstate.Items.Insert(0, new ListItem("---select---"));
    }
    protected void DropDowncity_SelectedIndexChanged1(object sender, EventArgs e)
    {
        dl.city_id = Convert.ToInt16(DropDowncity.SelectedValue);
        DropDowncity.DataBind();
        DropDowncity.Items.Insert(0, new ListItem("---select---"));
    }
}