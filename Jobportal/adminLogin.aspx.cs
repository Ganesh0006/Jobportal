using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jobportal
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["id"]!=null)
            {
                if(Request.QueryString["id"].ToString()=="LoginRequried")
                {
                    lblerror.Text = "Please Login";
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(txtLogin.Text=="admin" && txtpassword.Text=="admin")
            {
                Page.Session.Add("Admin", txtLogin.Text);
                Response.Redirect("adminAddnewjobs.aspx");

            }
            else
            {
                lblerror.Text = "please enter correct login information";
            }
        }
    }
}