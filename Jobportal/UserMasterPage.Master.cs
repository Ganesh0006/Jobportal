using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jobportal
{
    public partial class UserMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.Session["user"] != null)
            {
                lbLoginLogout.Text = "Logout";
                LBSignupUserProfile.Text = "Profile";
            }
            else
            {
                lbLoginLogout.Text = "Login";
                LBSignupUserProfile.Text = "Signup";
            }
        }

        protected void lbLoginLogout_Click(object sender, EventArgs e)
        {
            //if (lbLoginLogout.Text == "Login")
            //{
            //    Response.Redirect("Login.aspx");
            //}
            //if (lbLoginLogout.Text == "Logout")
            //{
            //    Page.Session.Abandon();
            //    Response.Redirect("Login.aspx?id=logout");
            //}
        }

        protected void LBSignupUserProfile_Click(object sender, EventArgs e)
        {
            //if (LBSignupUserProfile.Text == "Signup")
            //{
            //    Response.Redirect("Signup.aspx");
            //}
            //if (LBSignupUserProfile.Text == "Profile")
            //{
            //    Response.Redirect("UserProfile.aspx");
            //}

        }

        protected void LBSignupUserProfile_Click1(object sender, EventArgs e)
        {
            if (LBSignupUserProfile.Text == "Signup")
            {
                Response.Redirect("Signup.aspx");
            }
            if (LBSignupUserProfile.Text == "Profile")
            {
                Response.Redirect("UserProfile.aspx");
            }
        }

        protected void lbLoginLogout_Click1(object sender, EventArgs e)
        {
            if (lbLoginLogout.Text == "Login")
            {
                Response.Redirect("Login.aspx");
            }
            if (lbLoginLogout.Text == "Logout")
            {
                Page.Session.Abandon();
                Response.Redirect("Login.aspx?id=logout");
            }
        }
    }
}