﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jobportal
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnApplyNow_Click(object sender, EventArgs e)
        {
            if(Request.QueryString["id"]!=null)
            { 
            Response.Redirect("ResumeBuilder.aspx?id="+Request.QueryString["id"].ToString());
            }
        }
    }
}