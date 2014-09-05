using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MeltionHotel
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (IsPostBack && Page.IsValid)
            {
                Panel1.Visible = true;
                Label1.Text = DropDownList1.SelectedItem.Text;
                Label2.Text = TextBox1.Text;
                Label3.Text = TextBox2.Text;
                Label4.Text = TextBox8.Text;
                Label5.Text = TextBox3.Text;
                Label6.Text = listbox1.SelectedItem.Value;
                Label7.Text = rblist1.SelectedValue;
                Label8.Text = TextBox6.Text;
                Label9.Text = TextBox7.Text;
                Label10.Text = DropDownList2.SelectedItem.Text;
                Label11.Text = TextBox5.Text;
                Label13.Text = TextBox9.Text;
                Label14.Text = TextBox10.Text;
                HyperLink1.NavigateUrl = TextBox11.Text;
                HyperLink1.Text = TextBox11.Text;
                if (check1.Checked)
                {
                    Label12.Text = "* You have accepted and understood the Meltion Hotel Membership Terms and Conditions ";
                }
                userDataSource.Insert();
            }
        }
    }
}