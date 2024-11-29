using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CentralLogin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Cookies["VABack.CIDI"] != null)
            {
                if (Request.Cookies["VABack.CIDI"]["SesionHash"] != null)
                {
                    Response.Redirect("home.aspx");
                }
            }
        }
    }
}