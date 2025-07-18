using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace medicalProject.Member
{
    public partial class MemberHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["ICId"] == null)
                {
                    Session.Abandon();
                    Response.Redirect("~/Visitor/Login.aspx");
                }                
            }
            catch
            {

            }
        }
    }
}