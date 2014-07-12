using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for dal
/// </summary>
public class dal
{

    public dal()
    {
    }
    //audio
    public int mp3_upload_id { get; set; }
    public string mp3_path { get; set; }
    public string mp3upload_nm { get; set; }
    public string mp3_desc { get; set; }
  //ringtone
    public int ringtone_id { get; set; }
    public string ringtone_path { get; set; }
    public string ringtone_nm { get; set; }
    public string ringtone_desc { get; set; }

		//country table
         public int country_id {get; set;}
        public string country_name{get; set;}
        
        //stste table
        public int state_id{get; set;}
        public string state_name{get; set;}

        //city table
        public int city_id{get; set;}
        public string city_name{get; set;}

        //a login
        public int re_id { get; set; }
        public string admin_name { get; set; }
        public string admin_password { get; set; }
        

    //c login table
    public int login_id{get; set;}
    public string clientname { get; set; }
    public string client_password { get; set; }

        //registration table
        public int reg_id{get; set;}
        public string firstname{get; set;}
        public string lastname{get; set;}
        public string address { get; set;}
        public string gender{get; set;}
        public string contactno{get; set;}
        public string e_mail{get; set;}
        public string username{get; set;}
        public string password{get; set;}
        public string conform_password { get; set; }

        //category table
        public int cat_id{get; set;}
        public string category_name{get; set;}

        //sub category table
        public int sub_cat_id{get; set;}
        public string sub_cat_name{get; set;}

        //songs table
        public int song_id{get; set;}
        public string song_name{get; set;}
        

        //contact us table
        public string name{get; set;}
        public string addres{get; set;}
        public string phone{get; set;}
        public string email{get; set;}

        //feedback table
        public int user_id{get; set;}
        public string fullname{get; set;}
        public string re_address{get; set;}
        public string rate { get; set; }
        public string mobile_no{get; set;}
        public string mail{get; set;}
        public string comment{get; set;}
	
        //change password
        public string oldpassword { get; set; }
        

        //c password
        public string opass { get; set; }
        #region video
        public int vid_id { get; set; }
        public string vid_title { get; set; }
        public string vid_cat { get; set; }
        public string vid_extension { get; set; }
        public string vid_image { get; set; }
        public string vid_like_dislike { get; set; }
        public string vid_size { get; set; }
        public string vid_path { get; set; }
        #endregion
        #region audio
        public int aid_id { get; set; }
        public string aid_title { get; set; }
        public string aid_cat { get; set; }
        public string aid_extension { get; set; }
        public string aid_image { get; set; }
        public string aid_like_dislike { get; set; }
        public string aid_size { get; set; }
        public string aid_path { get; set; }
        #endregion

}
 