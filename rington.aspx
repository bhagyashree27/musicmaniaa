<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_after_login.master" AutoEventWireup="true" CodeFile="rington.aspx.cs" Inherits="rington" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="clear"></div>
            </div>
            <div class="rightBox2">
              <h1>RingTones</h1>
             <br /><br />
    
    <table id="rounded-corner" summary="2007 Major IT Companies' Profit">
    
    <thead>
    	<tr>
        	<th scope="col" class="rounded-company"></th>
            <th scope="col" class="rounded">Sr.No</th>
            <th scope="col" class="rounded">Song Name</th>
            
            <th scope="col" class="rounded">Play</th>
            <th scope="col" class="rounded-q4">Download</th>
        </tr>
    </thead>
    <%
        
        int i=1;
    
            foreach(System.Data.DataRow row in dt_getringtone.Rows) 
           {
               Response.Write("<tr><td><input type='checkbox' name='' /></td><td>" + i + "</td><td>" + row["ringtone_nm"] +


                            "</td><td><object type='application/x-shockwave-flash' data='dewplayer-vol.swf?mp3=admin/upload_ringtone/" + row["ringtone_path"] +
                            " ' width='240' height='20' id='dewplayer'> <param name='wmode' value='transparent' /> <param name='movie' value='dewplayer-vol.swf?mp3=admin/upload_ringtone/" + row["ringtone_path"] +
                            "' /></object></td><td><a href='ringtone_download.aspx?did=" + row["ringtone_id"] + "'>Download Now</a></td></tr>");
                                        
                
        i++;	
            }
             
    %>
    
     </table>
   
                 
              <div class="clear"></div>
            </div>
            <div class="clear"></div>
          








</asp:Content>

