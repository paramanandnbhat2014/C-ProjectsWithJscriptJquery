using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace MeltionHotel
{
    public partial class Ass2_locked_DisplayCode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["page"] != null)
            {
                Panel1.Visible = true;
                string pageFilePath = Server.MapPath(Request.QueryString["page"]);
                pageFileName.Text = Request.QueryString["page"];
                FileInfo pageFile = new FileInfo(pageFilePath);
                if (pageFile.Extension != ".mdb" && pageFile.Extension != ".xml" && pageFile.Extension != ".exe")
                {
                    pageCode.Text = ReadFile(pageFilePath);
                }
                else
                {
                    pageCode.Text = "Sorry you can't read a file with an extension of " + pageFile.Extension;
                }
            }

            if (Request.QueryString["code"] != null)
            {
                Panel2.Visible = true;
                string codeFilePath = Server.MapPath(Request.QueryString["code"]);
                codeFileName.Text = Request.QueryString["code"];
                FileInfo codeFile = new FileInfo(codeFilePath);
                if (codeFile.Extension != ".mdb" && codeFile.Extension != ".exe")
                {
                    code.Text = ReadFile(codeFilePath);
                }
                else
                {
                    code.Text = "Sorry you can't read a file with an extension of " + codeFile.Extension;
                }
            }

            if (Request.QueryString["xml"] != null)
            {
                Panel3.Visible = true;
                string xmlFilePath = Server.MapPath(Request.QueryString["xml"]);
                xmlFileName.Text = Request.QueryString["xml"];
                FileInfo xmlFile = new FileInfo(xmlFilePath);
                if (xmlFile.Extension != ".mdb" && xmlFile.Extension != ".exe")
                {
                    xml.Text = ReadFile(xmlFilePath);
                }
                else
                {
                    xml.Text = "Sorry you can't read a file with an extension of " + xmlFile.Extension;
                }
            }

            if (Request.QueryString["page2"] != null)
            {
                Panel4.Visible = true;
                string pageFilePath = Server.MapPath(Request.QueryString["page2"]);
                pageFileName2.Text = Request.QueryString["page2"];
                FileInfo pageFile = new FileInfo(pageFilePath);
                if (pageFile.Extension != ".mdb" && pageFile.Extension != ".exe")
                {
                    pageCode2.Text = ReadFile(pageFilePath);
                }
                else
                {
                    pageCode2.Text = "Sorry you can't read a file with an extension of " + pageFile.Extension;
                }
            }

            if (Request.QueryString["code2"] != null)
            {
                Panel5.Visible = true;
                string codeFilePath = Server.MapPath(Request.QueryString["code2"]);
                codeFileName2.Text = Request.QueryString["code2"];
                FileInfo codeFile = new FileInfo(codeFilePath);
                if (codeFile.Extension != ".mdb" && codeFile.Extension != ".exe")
                {
                    code2.Text = ReadFile(codeFilePath);
                }
                else
                {
                    code2.Text = "Sorry you can't read a file with an extension of " + codeFile.Extension;
                }
            }

            if (Request.QueryString["page3"] != null)
            {
                Panel6.Visible = true;
                string pageFilePath = Server.MapPath(Request.QueryString["page3"]);
                pageFileName3.Text = Request.QueryString["page3"];
                FileInfo pageFile = new FileInfo(pageFilePath);
                if (pageFile.Extension != ".mdb" && pageFile.Extension != ".exe")
                {
                    pageCode3.Text = ReadFile(pageFilePath);
                }
                else
                {
                    pageCode3.Text = "Sorry you can't read a file with an extension of " + pageFile.Extension;
                }
            }

            if (Request.QueryString["code3"] != null)
            {
                Panel7.Visible = true;
                string codeFilePath = Server.MapPath(Request.QueryString["code3"]);
                codeFileName3.Text = Request.QueryString["code3"];
                FileInfo codeFile = new FileInfo(codeFilePath);
                if (codeFile.Extension != ".mdb" && codeFile.Extension != ".exe")
                {
                    code3.Text = ReadFile(codeFilePath);
                }
                else
                {
                    code3.Text = "Sorry you can't read a file with an extension of " + codeFile.Extension;
                }
            }
        }

        private string ReadFile(string filepath)
        {
            string fileOutput = "";
            try
            {
                StreamReader FileReader = new StreamReader(filepath);
                //The returned value is -1 if no more characters are 
                //currently available.
                while (FileReader.Peek() > -1)
                {
                    //ReadLine() Reads a line of characters from the 
                    //current stream and returns the data as a string.
                    fileOutput += FileReader.ReadLine().Replace("<", "&lt;").Replace("  ", "&nbsp;&nbsp;&nbsp;&nbsp;") + "<br />";
                }
                FileReader.Close();
            }
            catch (FileNotFoundException e)
            {
                fileOutput = e.Message;
            }
            return fileOutput;
        }
    }
}