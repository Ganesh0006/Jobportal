using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;



namespace Jobportal
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["edit"]!=null)
            {
                if(!IsPostBack)
                {

               
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalconnectionString"].ToString());
                con.Open();
                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select*from tbljob where Jobid=" + Request.QueryString["edit"].ToString();
                SqlDataReader dr = com.ExecuteReader();
                if(dr.Read())
                {
                    txtJobid.Text = dr["Jobid"].ToString();
                    txtJobTitle.Text = dr["JobTitle"].ToString();
                    txtNoofpost.Text = dr["Noofpost"].ToString();
                    txtskills.Text = dr["Skills"].ToString();
                    txtQualificationRequries.Text = dr["QualificationRequries"].ToString();
                    txtExpRequried.Text = dr["ExperienceRequried"].ToString();
                    txtLAstdate.Text = dr["Lastdate"].ToString();


                }
                con.Close();
                }
            }
           

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(Request.QueryString["edit"]!=null)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalconnectionString"].ToString());
                con.Open();
                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "update tbljob set JobTitle='" + txtJobTitle.Text + "',Noofpost='" + txtNoofpost.Text + "',Skills='"+txtskills.Text+"',QualificationRequries='" + txtQualificationRequries.Text + "',ExperienceRequried='" + txtExpRequried.Text + "',Lastdate='" + txtLAstdate.Text + "' where Jobid="+Request.QueryString["edit"].ToString() +"";
                com.ExecuteNonQuery();
                con.Close();
                Response.Redirect("adminViewjobs.aspx?id=updated");

            }
          







        }
    }
}


























































//protected void Page_Load(object sender, EventArgs e)
//{
//    if (Request.QueryString["edit"] != null)
//    {
//        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalconnectionString"].ToString());
//        con.Open();
//        SqlCommand com = new SqlCommand();
//        com.Connection = con;
//        com.CommandText = "Select * from tbljob where Jobid=" + Request.QueryString["edit"].ToString();
//        SqlDataReader dr = com.ExecuteReader();
//        if (dr.Read())
//        {
//            txtJobid.Text = dr["txtJobid"].ToString();
//            txtJobTitle.Text = dr["txtJobTitle"].ToString();
//            txtNoofpost.Text = dr["txtNoofpost"].ToString();
//            txtQualificationRequried.Text = dr["txtQualificationRequried"].ToString();
//            txtExpRequried.Text = dr["txtExpRequried"].ToString();
//            txtLAstdate.Text = dr["txtLAstdate"].ToString();

//        }
//        con.Close();
//    }


//SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalconnectionString"].ToString());
//con.Open();
//SqlCommand com = new SqlCommand();
//com.Connection = con;
//com.CommandText = "insert into tbljob(Jobid,JobTitle,Noofpost,Skills,QualificationRequries,ExperienceRequried,Lastdate)values('" + txtJobid.Text + "','" + txtJobTitle.Text + "','" + txtNoofpost.Text + "','" + txtskills.Text + "','" + txtQualificationRequried.Text + "','" + txtExpRequried.Text + "','" + txtLAstdate.Text + "')";
//con.Close();