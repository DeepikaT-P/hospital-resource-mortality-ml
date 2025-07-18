using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace medicalProject.Visitor
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtLoginId.Focus();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                BLL obj = new BLL();

                if (dropdownlistType.SelectedIndex == 1)
                {
                    if (obj.CheckAdminLogin(txtLoginId.Text, txtPassword.Text))
                    {
                        Session["AdminId"] = txtLoginId.Text;
                        Response.Redirect("~/Admin/AdminHome.aspx");
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(GetType(), "key", "<script>alert('Invalid UserId/Password')</script>");
                    }
                }
                else if (dropdownlistType.SelectedIndex == 2)
                {
                    if (obj.CheckICLogin(txtLoginId.Text, txtPassword.Text))
                    {
                        Session["ICId"] = txtLoginId.Text;
                        Response.Redirect("~/Member/MemberHome.aspx");
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(GetType(), "key", "<script>alert('Invalid UserId/Password')</script>");
                    }
                }

            }
            catch
            {
                ClientScript.RegisterStartupScript(GetType(), "key", "<script>alert('Server Error - Check the Database Connectivity!!!')</script>");
            }
        }
    }
}