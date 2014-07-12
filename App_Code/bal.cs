using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


/// <summary>
/// Summary description for bal
/// </summary>
public class bal
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter ad;

	public bal()
	{

		con = new SqlConnection(ConfigurationManager.ConnectionStrings["my"].ToString());
	}


    //insert rington
    public int insert_ringtone( string ringtone_path, string ringtone_nm, string ringtone_desc, int feedback_store)
    {
       
        con.Open();
        cmd = new SqlCommand("dbo.insert_ringtone", con);
        cmd.CommandType = CommandType.StoredProcedure;
        
        cmd.Parameters.AddWithValue("ringtone_path", ringtone_path.Replace(" ", "_"));
        cmd.Parameters.AddWithValue("ringtone_nm", ringtone_nm);
        cmd.Parameters.AddWithValue("ringtone_desc", ringtone_desc);
       // cmd.Parameters.AddWithValue("feedback_store", feedback_store);
        int i = cmd.ExecuteNonQuery();
        con.Close();
        return 1;
    }
//insert audio

    public int insert_mp3upload(dal dl)
    {
        
        con.Open();
        cmd = new SqlCommand("dbo.insert_mp3upload", con);
        cmd.CommandType = CommandType.StoredProcedure;
       
        cmd.Parameters.AddWithValue("@mp3_path", dl.mp3_path);
        cmd.Parameters.AddWithValue("@mp3upload_nm", dl.mp3upload_nm);;
        cmd.Parameters.AddWithValue("@mp3_desc", dl.mp3_desc);
        //cmd.Parameters.Add(paramint("feedback_store", feedback_store));

        int i = cmd.ExecuteNonQuery();
        con.Close();
        return 1;

    }

    public DataTable get_mp3_nm(string path)
    {
        DataTable dt_mp3_nm = new DataTable();
       
        con.Open();
        cmd = new SqlCommand("SELECT * FROM mp3_upload where mp3upload_nm='" + path + "'", con);
        ad = new SqlDataAdapter(cmd);
        ad.Fill(dt_mp3_nm);
        con.Close();
        return dt_mp3_nm;
    }
    //country table
    public void insert_country(dal dl)
    {
	    con.Open();
	    cmd=new SqlCommand("insert_country",con);
	    cmd.CommandType=CommandType.StoredProcedure;
	    cmd.Parameters.AddWithValue("@country_name",dl.country_name);
	    cmd.ExecuteNonQuery();
	    con.Close();
    }

    public void update_country(dal dl)
    {
	    con.Open();
	    cmd=new SqlCommand("update_country",con);
	    cmd.CommandType=CommandType.StoredProcedure;
	    cmd.Parameters.AddWithValue("@country_id",dl.country_id);
	    cmd.Parameters.AddWithValue("@country_name",dl.country_name);
	    cmd.ExecuteNonQuery();
	    con.Close();
    }
    public void delete_country(dal dl)
    {
	    con.Open();
	    cmd=new SqlCommand("delete_country",con);
	    cmd.CommandType=CommandType.StoredProcedure;
	    cmd.Parameters.AddWithValue("@country_id",dl.country_id);
	    cmd.ExecuteNonQuery();
	    con.Close();
    }
    public DataTable  select_country()
    {
	    con.Open();
	    cmd=new SqlCommand("select_country",con);
	    cmd.CommandType=CommandType.StoredProcedure;
	    DataTable dt=new DataTable();
	    ad=new SqlDataAdapter(cmd);
	    ad.Fill(dt);
	    con.Close();
	    return dt;
    }
    
    //state table
    public void insert_state(dal dl)	
    {
	    con.Open();
	    cmd=new SqlCommand("Insert_state",con);
	    cmd.CommandType=CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@country_id", dl.country_id);
	    cmd.Parameters.AddWithValue("@state_name",dl.state_name);
	    cmd.ExecuteNonQuery();
	    con.Close();
    }

    public void update_state(dal dl)
    {
	    con.Open();
	    cmd=new SqlCommand("update_state",con);
	    cmd.CommandType=CommandType.StoredProcedure;
	    cmd.Parameters.AddWithValue("@state_id",dl.state_id);
	    cmd.Parameters.AddWithValue("@state_name",dl.state_name);
        //cmd.Parameters.AddWithValue("@country_id", dl.country_id);
	    cmd.ExecuteNonQuery();
	    con.Close();
    }
    public void delete_state(dal dl)
    {
	    con.Open();
	    cmd=new SqlCommand("delete_state",con);
	    cmd.CommandType=CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@state_id", dl.state_id);
	    cmd.ExecuteNonQuery();
	    con.Close();
    }
    public DataTable select_state()
    {
        con.Open();
        cmd = new SqlCommand("select_state", con);
        cmd.CommandType = CommandType.StoredProcedure;
        DataTable dt = new DataTable();
        ad = new SqlDataAdapter(cmd);
        ad.Fill(dt);
        con.Close();
        return dt;
    }

    public DataTable  bind_state(dal dl)
    {
	    con.Open();
	    cmd=new SqlCommand("bind_state",con);
	    cmd.CommandType=CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@country_id", dl.country_id);
	    DataTable dt=new DataTable();
	    ad=new SqlDataAdapter(cmd);
	    ad.Fill(dt);
	    con.Close();
	    return dt;
    }

    
    //city table
    public void insert_city(dal dl)	
{
	con.Open();
	cmd=new SqlCommand("Insert_city",con);
	cmd.CommandType=CommandType.StoredProcedure;
	cmd.Parameters.AddWithValue("@city_name",dl.city_name);
        cmd.Parameters.AddWithValue("@state_id", dl.state_id);
	cmd.ExecuteNonQuery();
	con.Close();
}

public void update_city(dal dl)
{
	con.Open();
	cmd=new SqlCommand("update_city",con);
	cmd.CommandType=CommandType.StoredProcedure;
	cmd.Parameters.AddWithValue("@city_id",dl.city_id);
       // cmd.Parameters.AddWithValue("@state_id", dl.state_id);
	cmd.Parameters.AddWithValue("@city_name",dl.city_name);
	cmd.ExecuteNonQuery();
	con.Close();
}
public void delete_city(dal dl)
{
	con.Open();
	cmd=new SqlCommand("delete_city",con);
	cmd.CommandType=CommandType.StoredProcedure;
	cmd.Parameters.AddWithValue("@city_id",dl.city_id);
	cmd.ExecuteNonQuery();
	con.Close();
}

public DataTable select_city()
{
    con.Open();
    cmd = new SqlCommand("select_city", con);
    cmd.CommandType = CommandType.StoredProcedure;
    DataTable dt = new DataTable();
    ad = new SqlDataAdapter(cmd);
    ad.Fill(dt);
    con.Close();
    return dt;
}

public DataTable bind_city(dal dl)
{
	con.Open();
	cmd=new SqlCommand("bind_city",con);
	cmd.CommandType=CommandType.StoredProcedure;
	cmd.Parameters.AddWithValue("@state_id", dl.state_id);
	DataTable dt=new DataTable();
	ad=new SqlDataAdapter(cmd);
	ad.Fill(dt);
	con.Close();
	return dt;
}
    //admin login table
public DataTable admin_login1(dal dl)
{
    con.Open();
    cmd = new SqlCommand("login", con);
    cmd.CommandType = CommandType.StoredProcedure;
    cmd.Parameters.AddWithValue("@adminname", dl.admin_name);
    cmd.Parameters.AddWithValue("@admin_password", dl.admin_password);
    DataTable dt = new DataTable();
    ad = new SqlDataAdapter(cmd);
    ad.Fill(dt);
    con.Close();
    return dt;
}
    //login table
public DataTable client_login(dal dl)
{
    con.Open();
    cmd = new SqlCommand("client_login", con);
    cmd.CommandType = CommandType.StoredProcedure;
    cmd.Parameters.AddWithValue("@username", dl.username);
    cmd.Parameters.AddWithValue("@password", dl.password);
    DataTable dt1 = new DataTable();
    ad = new SqlDataAdapter(cmd);
    ad.Fill(dt1);
    con.Close();
    return dt1;
}

    //registraton table
        public void insert_registrartion(dal dl)	
    {
	    con.Open();
	    cmd=new SqlCommand("Insert_register",con);
	    cmd.CommandType=CommandType.StoredProcedure;
	    cmd.Parameters.AddWithValue("@firstname",dl.firstname);
	    cmd.Parameters.AddWithValue("@lastname",dl.lastname);
	    
	    cmd.Parameters.AddWithValue("@gender",dl.gender);
	    cmd.Parameters.AddWithValue("@city_id",dl.city_id);
	    cmd.Parameters.AddWithValue("@state_id",dl.state_id);
	    cmd.Parameters.AddWithValue("@country_id",dl.country_id);
	    cmd.Parameters.AddWithValue("@contactno",dl.contactno);
        cmd.Parameters.AddWithValue("@e_mail ", dl.e_mail);
	    cmd.Parameters.AddWithValue("@username",dl.username);
	    cmd.Parameters.AddWithValue("@password",dl.password);	
	    cmd.ExecuteNonQuery();
	    con.Close();
    }

    public DataTable select_registration(dal dl)
    {
	    con.Open();
	    cmd=new SqlCommand("select_registration",con);
	    cmd.CommandType=CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@reg_id", dl.reg_id);
	    DataTable dt=new DataTable();
	    ad=new SqlDataAdapter(cmd);
	    ad.Fill(dt);
	    con.Close();
	    return dt;
    }
    //category table

    public void insert_category(dal dl)	
    {
	    con.Open();
	    cmd=new SqlCommand("Insert_category",con);
	    cmd.CommandType=CommandType.StoredProcedure;
	    cmd.Parameters.AddWithValue("@category_name",dl.category_name);
	    cmd.ExecuteNonQuery();
	    con.Close();
    }

    public void update_category(dal dl)
    {
	    con.Open();
	    cmd=new SqlCommand("update_category",con);
	    cmd.CommandType=CommandType.StoredProcedure;
	    cmd.Parameters.AddWithValue("@cat_id",dl.cat_id);
	    cmd.Parameters.AddWithValue("@category_name",dl.category_name);
	    cmd.ExecuteNonQuery();
	    con.Close();
    }
    public void delete_category(dal dl)
    {
	    con.Open();
	    cmd=new SqlCommand("delete_category",con);
	    cmd.CommandType=CommandType.StoredProcedure;
	    cmd.Parameters.AddWithValue("@cat_id",dl.cat_id);
	    cmd.ExecuteNonQuery();
	    con.Close();
    }

    public DataTable select_category()
    {
        con.Open();
        cmd = new SqlCommand("select_category", con);
        cmd.CommandType = CommandType.StoredProcedure;
        DataTable dt = new DataTable();
        ad = new SqlDataAdapter(cmd);
        ad.Fill(dt);
        con.Close();
        return dt;
    }
    //sub category table
    public void insert_sub_category(dal dl)	
    {
	    con.Open();
	    cmd=new SqlCommand("Insert_sub_category",con);
	    cmd.CommandType=CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@cat_id", dl.cat_id);
	    cmd.Parameters.AddWithValue("@sub_cat_name",dl.sub_cat_name);
	    cmd.ExecuteNonQuery();
	    con.Close();
    }

    public void update_sub_category(dal dl)
    {
	    con.Open();
	    cmd=new SqlCommand("update_sub_category",con);
	    cmd.CommandType=CommandType.StoredProcedure;
	    cmd.Parameters.AddWithValue("@sub_cat_id",dl.sub_cat_id);
        //cmd.Parameters.AddWithValue("@cat_id", dl.cat_id);
	    cmd.Parameters.AddWithValue("@sub_cat_name",dl.sub_cat_name);
	    cmd.ExecuteNonQuery();
	    con.Close();
    }
    public void delete_sub_category(dal dl)
    {
	    con.Open();
	    cmd=new SqlCommand("delete_sub_category",con);
	    cmd.CommandType=CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sub_cat_id", dl.sub_cat_id);
	    cmd.ExecuteNonQuery();
	    con.Close();
    }

    public DataTable bind_sub_category(dal dl)
    {
        con.Open();
        cmd = new SqlCommand("bind_sub_category", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@cat_id", dl.cat_id);
        DataTable dt = new DataTable();
        ad = new SqlDataAdapter(cmd);
        ad.Fill(dt);
        con.Close();
        return dt; 
    }

    public DataTable select_sub_category( )
    {
        con.Open();
        cmd = new SqlCommand("select_sub_category", con);
        cmd.CommandType = CommandType.StoredProcedure;
        DataTable dt = new DataTable();
        ad = new SqlDataAdapter(cmd);
        ad.Fill(dt);
        con.Close();
	    return dt;
    }

   //songs table

    public void insert_songs(dal dl)
    {
        con.Open();
        cmd = new SqlCommand("insert_songs", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@mp3_path", dl.mp3_path);
        cmd.Parameters.AddWithValue("@mp3upload_nm", dl.mp3upload_nm);
        cmd.ExecuteNonQuery();
        con.Close();
    }

    public void update_songs(dal dl)
    {
	    con.Open();
	    cmd=new SqlCommand("update_songs",con);
	    cmd.CommandType=CommandType.StoredProcedure;
	    cmd.Parameters.AddWithValue("@song_id",dl.song_id);
        //cmd.Parameters.AddWithValue("@sub_cat_id", dl.sub_cat_id);
	    cmd.Parameters.AddWithValue("@song_name",dl.song_name);
	    cmd.ExecuteNonQuery();
	    con.Close();
    }
    public void delete_songs(dal dl)
    {
	    con.Open();
	    cmd=new SqlCommand("delete_songs",con);
	    cmd.CommandType=CommandType.StoredProcedure;
	    cmd.Parameters.AddWithValue("@song_id",dl.song_id);
	    cmd.ExecuteNonQuery();
	    con.Close();
    }

    public DataTable select_songs()
    {
	    con.Open();
	    cmd=new SqlCommand("select_songs",con);
	    cmd.CommandType=CommandType.StoredProcedure;
	    DataTable dt=new DataTable();
	    ad=new SqlDataAdapter(cmd);
	    ad.Fill(dt);
	    con.Close();
	    return dt;
    }
    public DataTable bind_songs(dal dl)
    {
        con.Open();
        cmd = new SqlCommand("bind_songs", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sub_cat_id", dl.sub_cat_id);
        DataTable dt = new DataTable();
        ad = new SqlDataAdapter(cmd);
        ad.Fill(dt);
        con.Close();
        return dt;
    }

    //contact us table

    public DataTable select_contactus()
    {
	    con.Open();
	    cmd=new SqlCommand("select_contactus",con);
	    cmd.CommandType=CommandType.StoredProcedure;
	    DataTable dt=new DataTable();
	    ad=new SqlDataAdapter(cmd);
	    ad.Fill(dt);
	    con.Close();
	    return dt;
    }
    //feedback table

    public void insert_feedback(dal dl)	
    {
	    con.Open();
	    cmd=new SqlCommand("insert_feedback",con);
	    cmd.CommandType=CommandType.StoredProcedure;
	    cmd.Parameters.AddWithValue("@fullname",dl.fullname);
	    cmd.Parameters.AddWithValue("@re_address",dl.re_address);
        cmd.Parameters.AddWithValue("@rate", dl.rate);
	    cmd.Parameters.AddWithValue("@mobile_no",dl.mobile_no);
	    cmd.Parameters.AddWithValue("@mail",dl.mail);
	    cmd.Parameters.AddWithValue("@comment",dl.comment);
	    cmd.ExecuteNonQuery();
	    con.Close();
    }
    public void a_change_pwd(dal dl)
    {
        con.Open();
        cmd = new SqlCommand("a_change_pwd", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@admin_name", dl.admin_name);
        cmd.Parameters.AddWithValue("@admin_password", dl.admin_password);
        cmd.Parameters.AddWithValue("@oldpassword", dl.oldpassword);
        
        cmd.ExecuteNonQuery();
        con.Close();
    }

    public void c_change_pwd(dal dl)
    {
        con.Open();
        cmd = new SqlCommand("c_change_pwd", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@username", dl.username);
        cmd.Parameters.AddWithValue("@password", dl.password);
        cmd.Parameters.AddWithValue("@opass", dl.opass);
        cmd.ExecuteNonQuery();
        con.Close();
    }



        public DataTable select_profile(dal dl)
        {
            con.Open();
	        cmd=new SqlCommand("select_profile",con);
	        cmd.CommandType=CommandType.StoredProcedure;
            DataTable dt1 = new DataTable();
            cmd.Parameters.AddWithValue("@reg_id", dl.reg_id);
            DataTable dt_user = new DataTable();
            ad = new SqlDataAdapter(cmd);
            ad.Fill(dt_user);
            con.Close();
            return dt_user;
        }

    public void update_registration(dal dl)
    {
        con.Open();
        cmd = new SqlCommand("update_registration", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@firstname", dl.firstname);
        cmd.Parameters.AddWithValue("@lastname", dl.lastname);
        cmd.Parameters.AddWithValue("@address", dl.address);
        cmd.Parameters.AddWithValue("@gender", dl.gender);
        cmd.Parameters.AddWithValue("@city_id", dl.city_id);
        cmd.Parameters.AddWithValue("@state_id", dl.state_id);
        cmd.Parameters.AddWithValue("@country_id", dl.country_id);
        cmd.Parameters.AddWithValue("@contactno", dl.contactno);
        cmd.Parameters.AddWithValue("@e_mail", dl.e_mail);
        cmd.Parameters.AddWithValue("@username", dl.username);
        cmd.Parameters.AddWithValue("@passsword", dl.client_password);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public DataTable select_mp3upload()
    {
       
        
        con.Open();
        cmd = new SqlCommand("dbo.select_mp3upload", con);
        cmd.CommandType = CommandType.StoredProcedure;
        DataTable dt_mp3 = new DataTable();
        ad = new SqlDataAdapter(cmd);
        ad.Fill(dt_mp3);
        con.Close();
        return dt_mp3;
    }

    //for count
    public int get_count(int did)
    {
        // DataTable dt_counter = new DataTable();
        
        con.Open();
        cmd = new SqlCommand("SELECT feedback_store FROM mp3_upload where mp3_upload_id=" + did + "", con);
        int count = Convert.ToInt32(cmd.ExecuteScalar()) + 1;
        //da = new SqlDataAdapter(cmd);
        //da.Fill(dt_counter);
        cmd = new SqlCommand("UPDATE mp3_upload SET feedback_store =" + count + " where mp3_upload_id=" + did + "", con);
        cmd.ExecuteNonQuery();
        con.Close();
        return 1;

    }

    public int get_count1(int did)
    {
        // DataTable dt_counter = new DataTable();

        con.Open();
        cmd = new SqlCommand("SELECT feedback_store FROM ringtone_upload where ringtone_id=" + did + "", con);
        int count = Convert.ToInt32(cmd.ExecuteScalar()) + 1;
        //da = new SqlDataAdapter(cmd);
        //da.Fill(dt_counter);
        cmd = new SqlCommand("UPDATE ringtone_upload SET feedback_store =" + count + " where ringtone_id=" + did + "", con);
        cmd.ExecuteNonQuery();
        con.Close();
        return 1;

    }

    //for download
    public DataTable audio_download(int did)
    {
        DataTable dt_audio_dwd = new DataTable();
        con.Open();
        cmd = new SqlCommand("SELECT mp3_upload_id, mp3upload_nm FROM mp3_upload where mp3_upload_id=" + did + "", con);
        ad = new SqlDataAdapter(cmd);
        ad.Fill(dt_audio_dwd);
        con.Close();
        return dt_audio_dwd;
    }

    //ring tone


    public DataTable select_ringtone()
    {
        DataTable dt_ringtone = new DataTable();
       
        con.Open();
        cmd = new SqlCommand("dbo.select_ringtone", con);
        cmd.CommandType = CommandType.StoredProcedure;
        ad = new SqlDataAdapter(cmd);
        ad.Fill(dt_ringtone);
        con.Close();
        return dt_ringtone;
    }
 

    //ringtone download

    public DataTable ringtone_download(int did)
    {
        DataTable dt_ringtone_dwd = new DataTable();
       
        con.Open();
        cmd = new SqlCommand("SELECT ringtone_id, ringtone_path FROM ringtone_upload where ringtone_id=" + did + "", con);
        ad = new SqlDataAdapter(cmd);
        ad.Fill(dt_ringtone_dwd);
        con.Close();
        return dt_ringtone_dwd;
    }
    public void add_vid(dal dl)
    {
        con.Open();
        cmd = new SqlCommand("add_vid", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@vid_title", dl.vid_title);
        cmd.Parameters.AddWithValue("@vid_path", dl.vid_path);
        cmd.Parameters.AddWithValue("@vid_image", dl.vid_image);
        cmd.Parameters.AddWithValue("@sub_cat_id", dl.sub_cat_id);
        cmd.ExecuteNonQuery();
        con.Close();
    }

    public void delete_vid(int vid_id)
    {
        con.Open();
        cmd = new SqlCommand("delete_vid", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@vid_id", vid_id);
        cmd.ExecuteNonQuery();
        con.Close();

    }

    public void update_vid(dal dl)
    {
        con.Open();
        cmd = new SqlCommand("updatevid", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@vid_id", dl.vid_id);
        cmd.Parameters.AddWithValue("@sub_cat_id", dl.sub_cat_id);
        cmd.Parameters.AddWithValue("@vid_title", dl.vid_title);
        cmd.Parameters.AddWithValue("@vid_image", dl.vid_image);
        cmd.Parameters.AddWithValue("@vid_path", dl.vid_path);
        cmd.ExecuteNonQuery();
        con.Close();
    }


    public DataTable displayvid()
    {
        con.Open();
        cmd = new SqlCommand("displayvid", con);
        cmd.CommandType = CommandType.StoredProcedure;

     DataTable    dt = new DataTable();
     SqlDataAdapter    da = new SqlDataAdapter(cmd);

        da.Fill(dt);


        con.Close();
        return dt;
    }
    public void add_aid(dal dl)
    {
        con.Open();
        cmd = new SqlCommand("add_aid", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@aid_title", dl.aid_title);
        cmd.Parameters.AddWithValue("@aid_path", dl.aid_path);
        cmd.Parameters.AddWithValue("@aid_image", dl.aid_image);
        cmd.Parameters.AddWithValue("@sub_cat_id", dl.sub_cat_id);
        cmd.ExecuteNonQuery();
        con.Close();
    }

    public void delete_aid(int aid_id)
    {
        con.Open();
        cmd = new SqlCommand("delete_aid", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@aid_id", aid_id);
        cmd.ExecuteNonQuery();
        con.Close();

    }

    public void update_aid(dal dl)
    {
        con.Open();
        cmd = new SqlCommand("updateaid", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@aid_id", dl.aid_id);
        cmd.Parameters.AddWithValue("@sub_cat_id", dl.sub_cat_id);
        cmd.Parameters.AddWithValue("@aid_title", dl.aid_title);
        cmd.Parameters.AddWithValue("@aid_image", dl.aid_image);
        cmd.Parameters.AddWithValue("@aid_path", dl.aid_path);
        cmd.ExecuteNonQuery();
        con.Close();
    }


    public DataTable displayaid()
    {
        con.Open();
        cmd = new SqlCommand("displayaid", con);
        cmd.CommandType = CommandType.StoredProcedure;

        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        da.Fill(dt);


        con.Close();
        return dt;
    }
    public DataTable bindmaterialvideo(dal  dl)
    {
        con.Open();
        cmd = new SqlCommand("bindmaterialvideo", con);
        cmd.CommandType = CommandType.StoredProcedure;

   SqlDataAdapter   da = new SqlDataAdapter(cmd);

    DataTable dt = new DataTable();


        da.Fill(dt);
        con.Close();
        return dt;

    }
    public DataTable getvideobyid(int vid_id)
    {
        con.Open();
        cmd = new SqlCommand("getvideobyid", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@vid_id", vid_id);

      SqlDataAdapter   da = new SqlDataAdapter(cmd);
      DataTable   dt = new DataTable();

        da.Fill(dt);
        con.Close();
        return dt;

    }
    public DataTable bindmaterialaudio(dal dl)
    {
        con.Open();
        cmd = new SqlCommand("bindmaterialaudio", con);
        cmd.CommandType = CommandType.StoredProcedure;

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();


        da.Fill(dt);
        con.Close();
        return dt;

    }
    public DataTable getaudiobyid(int aid_id)
    {
        con.Open();
        cmd = new SqlCommand("getaudiobyid", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@aid_id", aid_id);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();

        da.Fill(dt);
        con.Close();
        return dt;

    }
    public DataTable bindcategoriessong(dal dl)
    {
        con.Open();
        cmd = new SqlCommand("categoriessong", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@sub_cat_id", dl.sub_cat_id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();


        da.Fill(dt);
        con.Close();
        return dt;

    }
}
