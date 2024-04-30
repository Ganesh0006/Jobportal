﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jobportal
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.Session["user"] == null)
            {
                //Response.Redirect("Login.aspx?id=LoginRequried");
                Response.Redirect("UserProfile.aspx?id=success");
            }
            if (Request.QueryString["id"] != null)
            {
                if (Request.QueryString["id"].ToString() == "success")
                {
                    lblerror.Text = "you have successfully loged in";
                }
            }
        }
    }
}