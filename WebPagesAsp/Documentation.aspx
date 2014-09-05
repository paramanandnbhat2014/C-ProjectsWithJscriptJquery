<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Documentation.aspx.cs" Inherits="MeltionHotel.Documentation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Documentation</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table tr:odd").css('background', '#ffffff');
            $(".table tr:even").css('background', '#d4ffaa');
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <fieldset>
        <legend>
            <h2>
                Documentation</h2>
        </legend>
        <table class="table">
            <tbody>
                <tr>
                    <td>
                        Student Name
                    </td>
                    <td>
                        Haoyu Li
                    </td>
                </tr>
                <tr>
                    <td>
                        Student Id
                    </td>
                    <td>
                        23222972
                    </td>
                </tr>
                <tr>
                    <td>
                        Unit name
                    </td>
                    <td>
                        FIT5032 Internet applications development
                    </td>
                </tr>
                <tr>
                    <td>
                        Unit Provider
                    </td>
                    <td>
                        Monash University, The Caulfield School of Information Technology
                    </td>
                </tr>
                <tr>
                    <td>
                        Assignment Number
                    </td>
                    <td>
                        2
                    </td>
                </tr>
                <tr>
                    <td>
                        Submission Date
                    </td>
                    <td>
                        11th Octorber,2013
                    </td>
                </tr>
                <tr>
                    <td>
                        Tutor Name
                    </td>
                    <td>
                        Ali Alammary
                    </td>
                </tr>
                <tr>
                    <td>
                        Author Email
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="mailto:hli92@student.monash.edu">hli92@student.monash.edu</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        Assignment Specification
                    </td>
                    <td>
                        <a href="http://walkabout.netcomp.monash.edu.au/walkabout/FIT5032/index.html" alt="Assignment Specification Link">
                        Assignment 2 Specification
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
    </fieldset>
    <br />
    <div class="buttonArea">
        <a href="../DisplayCode.aspx?page=../App_Themes/skin/css/masterPage.css
                &code=../App_Themes/skin/css/homePage.css
                &xml=../App_Themes/skin/css/registration.css
                &page2=../App_Themes/skin/css/aboutUs.css
                &code2=../App_Themes/skin/css/faq.css
                &page3=../App_Themes/skin/css/siteMap.css
                &code3=../App_Themes/skin/css/displayCode.css" 
                target="_blank">
            <img class="imgbutton" id="Img1" src="../../img/codebuttonCSS.jpg" alt="css file" runat="server" />
        </a>
        <a href="../DisplayCode.aspx?page=../App_Themes/skin/default.skin" target="_blank">
            <img class="imgbutton" id="Img2" src="../../img/codebuttonSkin.jpg" alt="css file" runat="server" />
        </a>
    </div>
    <br />
</asp:Content>
