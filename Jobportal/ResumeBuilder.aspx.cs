using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Data;
using System.Text.RegularExpressions;

namespace Jobportal
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.Session["user"] == null)
            {
                Response.Redirect("Login.aspx?id=LoginRequried");
            }
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalconnectionString"].ToString());
            con.Open();
            SqlCommand com = new SqlCommand();
            com.Connection = con;
            
            com.CommandText = "select * from tbluser where vLoginId='" + Page.Session["user"].ToString() + "'";
            SqlDataReader dr;
            dr = com.ExecuteReader();
            if(dr.Read())
            {
                txtName.Text = dr["vName"].ToString();
                txtAddress.Text = dr["vAddress"].ToString();
                txtContactNo.Text = dr["vContactNo"].ToString();
                txtMailId.Text = dr["vMailId"].ToString();
            }
           
            con.Close();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
           string sFileName=UploadResumeFile();

           SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalconnectionString"].ToString());
           con.Open();
           SqlCommand com = new SqlCommand();
           com.Connection = con;
            com.CommandText = "insert into tblInfo(vName,vAddress,vPhone,vMailId,v10th,v12th,vGraduation,vPostGraduation,vResumeFile)values('"+txtName.Text+ "','" + txtAddress.Text + "','" + txtContactNo.Text + "','" + txtMailId.Text + "','" + txtQualification0.Text + "','" + txtQualification1.Text + "','" + txtQualification2.Text + "','" + txtQualification2.Text + "','" + sFileName+ "')";
           com.ExecuteNonQuery();
           Response.Redirect("ResumeUploadSuccessfully.aspx");
            // //lblerror
        }
        public String UploadResumeFile()
        {

            {
                if (FileUploadResume.HasFile)
                {
                    Regex fileExpension = new Regex(@"^.+\.(doc|docx|pdf|txt)");
                    Match MatchResult = fileExpension.Match(FileUploadResume.FileName);
                    if (MatchResult.Success)
                    {
                        FileUploadResume.SaveAs(Server.MapPath("Resumes/" + Page.Session["user"].ToString() + FileUploadResume.FileName));
                    }
                    else
                    {
                        lblfileError.Text = "Please select a .doc/.docs/.pdf/.txt file only.";
                    }

                }
                return Page.Session["user"].ToString() + FileUploadResume.FileName;
            }
        }
    }
}