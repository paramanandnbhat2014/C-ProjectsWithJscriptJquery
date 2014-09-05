using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MeltionHotel
{
    public partial class Ass2_locked_Calendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DateTime selectedDate = new DateTime();
          
            //selectedDate = Calendar21.SelectedDate;
            //dsEvent1.SelectCommand = "SELECT * FROM Event WHERE EventDate = #" + DateTime.Now.ToString("MM/dd/yyyy") +"#";
            //selectChangedDB1.SelectCommand = "SELECT * FROM Event WHERE EventDate = #" + selectedDate.ToString("MM/dd/yyyy") + "#";
        }

        public void dayRender(object sender, DayRenderEventArgs e) 
        {
            DateTime selectedDate = new DateTime();

            selectedDate = Calendar21.SelectedDate;
            dsEvent1.SelectCommand = "SELECT * FROM Event WHERE EventDate = #" + DateTime.Now.ToString("MM/dd/yyyy") + "#";
            selectChangedDB1.SelectCommand = "SELECT * FROM Event WHERE EventDate = #" + selectedDate.ToString("MM/dd/yyyy") + "#";

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

            DataView dv = (DataView)dsEvent1.Select(DataSourceSelectArguments.Empty);
            if (e.Day.Date.ToString("MM/dd/yyyy").Equals(DateTime.Now.ToString("MM/dd/yyyy")) && dv.Count > 0)
            {
                eventDesc1.Visible = false;
                todayDate1.Visible = true;
                ListView11.Visible = true;
                e.Cell.ApplyStyle(todayStyle);
                ListView11.DataSource = dsEvent1;
                ListView11.DataBind();
                //eventDesc.Text = "<p>Event Description</p>" + dv[0][3].ToString();
                //DateTime dt = (DateTime)dv[0][2];
                //eventTime.Text = "<p>Event Time</p>" + dt.ToString("h:mm tt");
            }
            else if (e.Day.Date.ToString("MM/dd/yyyy").Equals(DateTime.Now.ToString("MM/dd/yyyy")) && dv.Count == 0)
            {
                eventDesc1.Visible = true;
                todayDate1.Visible = false;
                ListView11.Visible = false;
                eventDesc1.Text = "No Events Scheduled for Today.";
            }


            if (IsPostBack)
            {
                //DateTime selectedDate;
                //selectedDate = Calendar21.SelectedDate;

                DataView dv1 = (DataView)selectChangedDB1.Select(DataSourceSelectArguments.Empty);
                if (dv1.Count > 0)
                {
                    eventDesc21.Visible = false;
                    selectedDateLabel1.Visible = true;
                    ListView21.Visible = true;
                    ListView21.DataSource = selectChangedDB1;
                    ListView21.DataBind();
                }
                else if (dv1.Count == 0)
                {
                    eventDesc21.Visible = true;
                    selectedDateLabel1.Visible = false;
                    ListView21.Visible = false;
                    eventDesc21.Text = "No Events Scheduled for Selected Day.";
                }
            }
        }

        /*
        public void selection_Change(Object sender, EventArgs e) 
        {
            DateTime selectedDate;
            selectedDate = Calendar21.SelectedDate;

            DataView dv = (DataView)selectChangedDB1.Select(DataSourceSelectArguments.Empty);
            if (dv.Count > 0)
            {
                eventDesc21.Visible = false;
                selectedDateLabel1.Visible = true;
                ListView21.Visible = true;
                ListView21.DataSource = selectChangedDB1;
                ListView21.DataBind();
            }
            else if (dv.Count == 0)
            {
                eventDesc21.Visible = true;
                selectedDateLabel1.Visible = false;
                ListView21.Visible = false;
                eventDesc21.Text = "No Events Scheduled for Selected Day.";
            }
        
        }
        */
    }
}