using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;

namespace MeltionHotel
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Page.User.Identity.IsAuthenticated)
            {
                welcome.Visible = true;
                welcome.Text = "<p>Welcome, " + Page.User.Identity.Name + "</p>";
                logoutButton.Visible = true;
            }

        }

        public void dayRender(object sender, DayRenderEventArgs e)
        {
            DateTime selectedDate = new DateTime();
            selectedDate = Calendar2.SelectedDate;

            dsEvent.SelectCommand = "SELECT * FROM Event WHERE EventDate = #" + DateTime.Now.ToString("MM/dd/yyyy") + "#";
            selectChangedDB.SelectCommand = "SELECT * FROM Event WHERE EventDate = #" + selectedDate.ToString("MM/dd/yyyy") + "#";


            //today cell style
            Style todayStyle = new Style();
            todayStyle.BackColor = System.Drawing.Color.Coral;
            todayStyle.BorderColor = System.Drawing.Color.Orange;
            todayStyle.BorderWidth = 1;

            //weenday cell style
            Style weekendStyle = new Style();
            weekendStyle.BackColor = System.Drawing.Color.Bisque;

            if (e.Day.IsWeekend)
            {
                e.Cell.ApplyStyle(weekendStyle);
            }

            DataView dv = (DataView)dsEvent.Select(DataSourceSelectArguments.Empty);
            if (e.Day.Date.ToString("MM/dd/yyyy").Equals(DateTime.Now.ToString("MM/dd/yyyy")) && dv.Count > 0)
            {
                eventDesc.Visible = false;
                todayDate.Visible = true;
                ListView1.Visible = true;
                e.Cell.ApplyStyle(todayStyle);
                ListView1.DataSource = dsEvent;
                ListView1.DataBind();
                //eventDesc.Text = "<p>Event Description</p>" + dv[0][3].ToString();
                //DateTime dt = (DateTime)dv[0][2];
                //eventTime.Text = "<p>Event Time</p>" + dt.ToString("h:mm tt");
            }
            else if (e.Day.Date.ToString("MM/dd/yyyy").Equals(DateTime.Now.ToString("MM/dd/yyyy")) && dv.Count == 0)
            {
                eventDesc.Visible = true;
                todayDate.Visible = false;
                ListView1.Visible = false;
                eventDesc.Text = "No Events Scheduled for Today.";
            }


            if (IsPostBack)
            {
                //DateTime selectedDate;
                //selectedDate = Calendar2.SelectedDate;

                DataView dv1 = (DataView)selectChangedDB.Select(DataSourceSelectArguments.Empty);
                if (dv1.Count > 0)
                {
                    eventDesc2.Visible = false;
                    selectedDateLabel.Visible = true;
                    ListView2.Visible = true;
                    ListView2.DataSource = selectChangedDB;
                    ListView2.DataBind();
                }
                else if (dv1.Count == 0)
                {
                    eventDesc2.Visible = true;
                    selectedDateLabel.Visible = false;
                    ListView2.Visible = false;
                    eventDesc2.Text = "No Events Scheduled for Selected Day.";
                }
            }
        }
        
        protected void logoutButton_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();

            //String url = HttpContext.Current.Request.Url.AbsoluteUri;
            //if (String.Compare(url, "http://triton.infotech.monash.edu.au/fit5032_23222972/Ass2/index.aspx") != 0)
            //    Response.Redirect("../login.aspx");
            //else
            //    Response.Redirect("login.aspx");

            Response.Redirect("~/Ass2/login.aspx");  
            //"~" means the current page "MasterPage.master", not any other subpages inherited from this master page.
            //aslo check the defaultUrl attribute in Web.config if login page found no previous page it is redirected from after finish login
        }
    }
}