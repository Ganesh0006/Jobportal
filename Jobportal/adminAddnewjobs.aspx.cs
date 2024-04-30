using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;
using System.Web.Security;
namespace Jobportal
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.Session["admin"]==null)
            {
                Response.Redirect("Login.aspx?id=LoginRequried");
            }
           
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalconnectionString"].ToString());
                con.Open();
                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "insert into tbljob(Jobid,JobTitle,Noofpost,Skills,QualificationRequries,ExperienceRequried,Lastdate)values('" + txtJobid.Text + "','" + txtJobTitle.Text + "','" + txtNoofpost.Text + "','" + txtskills.Text + "','" + txtQualificationRequried.Text + "','" + txtExpRequried.Text + "','" + txtLAstdate.Text + "')";
                com.ExecuteNonQuery();
                Response.Redirect("adminViewjobs.aspx?id=added");
            }
            catch(Exception ex)
            {
                Iblerror.Text = "Error:" + ex.Message;
            }
        }
    }
}