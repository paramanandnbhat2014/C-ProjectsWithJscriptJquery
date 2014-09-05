using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MeltionHotel
{
    public partial class Ass2_locked_ViewAllRecords : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void displayRow(object sender, GridViewCommandEventArgs e)
        {
            dataSource9.SelectCommand = "SELECT * FROM userInfo WHERE customerID = " + Convert.ToInt32(users.Rows[Convert.ToInt32(e.CommandArgument)].Cells[1].Text);
            detailView1.DataSource = dataSource9;
            detailView1.DataBind();
            titleInfo.Text = users.Rows[Convert.ToInt32(e.CommandArgument)].Cells[2].Text + "'s Information <hr />";
        }
    }
}