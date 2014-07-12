<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_after_login.master" AutoEventWireup="true" CodeFile="audio_song.aspx.cs" Inherits="audio_song" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="clear">
    
                 
     </div>
            </div>
            <div class="rightBox2" style="overflow:auto">
              <h1>Audio Songs</h1>
             <br /><br />
    
    <table id="rounded-corner" summary="2007 Major IT Companies' Profit">
    
    <thead>
    	<tr>
        	<th scope="col"  class="rounded-company"></th>
            <th scope="col">Sr.No</th>
            <th scope="col" >Song Name</th>
            
            <th scope="col" align="center" >Play</th>
            <th scope="col"  class="rounded-q4">Download</th>
        </tr>
    </thead>
    <%
        get_songs();
        int i=1;
    
            foreach(System.Data.DataRow row in dt_getsong.Rows) 
           {

               Response.Write("<tr><td><input type='checkbox' name='' /></td><td>" + i + "</td><td>" + row["mp3_path"] +
                          "</td><td><object type='application/x-shockwave-flash' data='dewplayer-vol.swf?mp3=admin/upload_mp3/" + row["mp3upload_nm"] +
                          " ' width='240' height='20' id='dewplayer'> <param name='wmode' value='transparent' /> <param name='movie' value='dewplayer-vol.swf?mp3=admin/upload_mp3/" + row["mp3upload_nm"] +
                          "' /></object></td><td><a href='audio_download.aspx?did=" + row["mp3_upload_id"] + "'>Download Now</a></td></tr>");

               i++;	
            
             
            }
             
    %>
    
                 </table>
  
               
                  <div class="clear"></div>
                </div>
               
            <div class="clear"></div>
          












</asp:Content>

