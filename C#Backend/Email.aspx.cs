using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;


namespace MeltionHotel
{
    public partial class Ass2_locked_Email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void SendEmail(object sender, EventArgs e)
        {
            //response.Text = "";
            MailMessage newMessage = new MailMessage();
            foreach (GridViewRow user in users.Rows)
            {
                CheckBox cb = (CheckBox)user.FindControl("checkEmail");
                if (cb != null && cb.Checked)
                {
                    newMessage.To.Add(new MailAddress(user.Cells[3].Text,
                    user.Cells[1].Text + " " + user.Cells[2].Text));


                    newMessage.From = new MailAddress("L2007051407@gmail.com", "Meltion Hotel");
                    newMessage.Subject = subjectTxt.Text;
                    newMessage.Body = MessageTxt.Text;
                    try
                    {
                        SmtpClient smtp = new SmtpClient("smtp.monash.edu.au");
                        //smtp.Host = "smtp.monash.edu.au";
                        smtp.Port = 25;
                        smtp.Timeout = 100000;
                        smtp.Send(newMessage);
                        response.Text = "All Mails have been Sent Successfully";
                    }
                    catch (Exception exc)
                    {
                        response.Text = "Hint: " + exc.Message + "on User: " + user.Cells[1].Text + " " + user.Cells[2].Text;
                        break;
                    }
                }
            }
        }
    }
}