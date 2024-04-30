using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jobportal
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.Session["admin"] == null)
            {
                Response.Redirect("Login.aspx?id=LoginRequried");
            }

            //if (Page.Session["admin"] == null)
            //{
            //    Response.Redirect("adminLogin.aspx?id=LoginRequried");
            //}


        }
    }
}