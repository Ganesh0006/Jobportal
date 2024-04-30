using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text;





namespace Jobportal
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalconnectionString"].ToString());
            //con.Open();
            //SqlCommand com = new SqlCommand();
            //com.CommandText= "select * from tbluser where vLoginId='"+txtmailid.Text+"'";
            //SqlDataReader dr = com.ExecuteReader();
            //if(dr.Read())
          //  {
                //string password, mailid;
                //password = dr["vpassword"].ToString();
                //mailid = dr["vmailid"].ToString();
                //SendMail(password, mailid);


                //SendMail(dr["password"].ToString(),dr["mailid"].ToString);
         //   }
           // else
           // {
                //Iblerror.Text = "PLEASE ENTER CORRECT LOGIN ID ";
            //}
        }
        public void SendMail(string password,string mailid)
        {
          // try
            //{
            //    MailAddress to = new MailAddress(mailid);
            //    MailAddress from = new MailAddress("admin@jobportal.com");
            //    MailAddress msg = new MailAddress(from, to)
            //    {
            //        Subject = "JobPortal account information",
            //        body = "<b>password:</b>" + password,
            //        IsBodyHtml = true
            //    };
            //    sntpClient obj = new sntpClient("localhost", 25);
            //    Iblerror.Text = "your password has been send to your mail id" + mailid;
            //}
            //catch(Exception ex)
            //{
            //    Iblerror.Text = "Error:" + ex.Message;
            //}
            


        }

        //private void SendMail(string v, Func<string> toString)
        //{
        //    throw new NotImplementedException();
        //}
        // public void get(string p)
    }
}