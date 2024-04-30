using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace Jobportal
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["del"] != null)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalconnectionString"].ToString());
                con.Open();
                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "delete from tbljob where Jobid=" + Request.QueryString["del"].ToString();
                com.ExecuteNonQuery();
                Response.Redirect("adminViewjobs.aspx?id=delete");
            }
            if (Request.QueryString["id"] != null)
            {
                if (Request.QueryString["id"].ToString() == "delete");
                {
                    Label2.Text = "Job Deleted Successfully";
                }
                if (Request.QueryString["id"].ToString() == "added") ;
                {
                    Label2.Text = "New Job Added Successfully";
                }
                if (Request.QueryString["id"].ToString() == "updated") ;
                {
                    Label2.Text = "New Job updated Successfully";
                }

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}