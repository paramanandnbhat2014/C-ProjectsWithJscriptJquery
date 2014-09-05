using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;


namespace MeltionHotel
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public void Login_Authenticate(object sender, AuthenticateEventArgs e)
        {

            ds1.SelectCommand = "SELECT * FROM login WHERE userName = '" + Login.UserName + "' AND password = '" + Login.Password + "'";

            ds1.Select(DataSourceSelectArguments.Empty);
        }

        public void CheckLogin(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.AffectedRows > 0)
            {
                FormsAuthentication.RedirectFromLoginPage(Login.UserName, false);
            }
            else
            {
                Login.FailureText = "Invalid Login";
                
            }
        }
    }
}