using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace medicalProject.Admin
{
    public partial class AdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["AdminId"] == null)
                {
                    Session.Abandon();
                    Response.Redirect("~/Visitor/Login.aspx");
                }
                else
                {
                    
                }
            }
            catch
            {

            }
        }
    }
}