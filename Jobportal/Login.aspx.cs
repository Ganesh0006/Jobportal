using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace Jobportal
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["id"]!=null)
            {
                if(Request.QueryString["id"].ToString()=="Registor")
                {
                    lblerror.Text = "you have register sucessfully";
                }
                if (Request.QueryString["id"].ToString() == "Logout")
                {
                    lblerror.Text = "you have sucessfully logout";
                }
                if (Request.QueryString["id"].ToString() == "LoginRequried")
                {
                    lblerror.Text = "hey hi Please login before this page";
                }

            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalconnectionString"].ToString());
            con.Open();
            SqlCommand com = new SqlCommand();
            com.Connection = con;
            com.CommandText = "select vPassword from tbluser where vLoginId='"+txtLogin.Text+"'";
            SqlDataReader dr;
            dr = com.ExecuteReader();
            if(dr.Read())

            {
                string sPassword = dr["vPassword"].ToString();
                if(sPassword==txtpassword.Text)

                {
                    Page.Session.Add("user",txtLogin.Text);
                    Page.Session.Timeout = 20;              /*->time expire agiduchi na logout agidum*/ 

                    Response.Redirect("UserProfile.aspx?id=success");
                }
                else
                {
                    lblerror.Text = "Password is incorrect";
                }
            }
            else
            {
                lblerror.Text = "Login id is incorrect";
            }

        }
    }
} 