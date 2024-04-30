using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Jobportal
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //try
            //{

            //MailAddress to = new MailAddress("admin@jgjobportal.com");
            //MailAddress from = new MailAddress(TextMailId.Text);
            //    MailAddress Message = new MailAddress(from, to)
            //    {
            //        Subject = "JG JOB PORTAL USER QUERY",
            //        Body = "Name:" + txtName.Text + "<br>phone:" + txtContactNo.Text + "<br>Query:" + txtQuery.Text
            //    };
            //    Content obj = new Content("localhost", 25);
            //object p=send(Message);

            //}
            //catch(Exception ex)
            //{
            //    lblerror.Text = "Error:" + ex.Message;
            //}


        }

        //private object send(MailAddress message)
        //{
        //    throw new NotImplementedException();
        //}
    }
}