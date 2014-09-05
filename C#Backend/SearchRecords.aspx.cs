using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MeltionHotel
{
    public partial class Ass2_locked_SearchRecords : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void displayRow(object sender, GridViewCommandEventArgs e)
        {
            lv.Visible = true;
            dataSource5.SelectCommand = "SELECT * FROM userInfo WHERE customerID = " + Convert.ToInt32(users.Rows[Convert.ToInt32(e.CommandArgument)].Cells[1].Text);
            lv.DataSource = dataSource5;
            lv.DataBind();
        }

        protected void findUser(object sender, EventArgs e)
        {
            lv.Visible = false;
            string text = searchlist.SelectedItem.Text;
            switch (text)
            {
                case "Search by User Name":
                    dataSource3.SelectCommand = "SELECT * FROM userInfo WHERE userName LIKE '%" + searchbar.Text.Trim(' ') + "%'";
                    break;
                case "Search by Phone Number":
                    dataSource3.SelectCommand = "SELECT * FROM userInfo WHERE phoneNumber LIKE '%" + searchbar.Text.Trim(' ') + "%'";
                    break;
                case "Search by Email":
                    dataSource3.SelectCommand = "SELECT * FROM userInfo WHERE email LIKE '%" + searchbar.Text.Trim(' ') + "%'";
                    break;
            }

            users.DataSource = dataSource3;
            users.DataBind();

        }


        public void CountRows(object sender, SqlDataSourceStatusEventArgs e)
        {
            errormessage.Text = "";
            totalResults.Text = "";
            if (e.AffectedRows == 0)
            {
                errormessage.Visible = true;
                lv.Visible = false;
                errormessage.Text = "Sorry,there is no record that matches the your input.";
            }
            else {
                errormessage.Visible = false;
                totalResults.Text = "<br/><br/><h3>Total Results</h3><hr/>";
            }
        }
}
}