using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Configuration;

namespace Jobportal
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalconnectionString"].ToString());
            con.Open();
            SqlCommand com = new SqlCommand();
            com.Connection = con;
            com.CommandText = "insert into tbluser(vLoginId,vPassword,vName,vAddress,vContactNo,vMailId,vQualification,vCountry)values ('"
                +txtLogin.Text+ "','" 
                + txtPassword.Text + "','" 
                + txtName.Text + "','" 
                + txtAddress.Text + "','" 
                + txtContactNo.Text + "','" 
                + txtMailId.Text + "','" 
                + txtQualification.Text + "','" 
                + ddlCountry.SelectedValue.ToString() + "')";
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Login.aspx?id=registor");
            //lblerror.Text = "you have register sucessfully";
        }
    }
}