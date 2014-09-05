<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="MeltionHotel.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Log in</title>
    <link href="../App_Themes/skin//css/registration.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="content">
        <div class="loginwindow">
            <asp:AccessDataSource ID="ds1" runat="server" DataFile="~/App_Data/user.accdb" OnSelected="CheckLogin"
                SelectCommand="SELECT * FROM [login]"></asp:AccessDataSource>
            <asp:Login ID="Login" runat="server" OnAuthenticate="Login_Authenticate" CssClass="loginbox"
                TitleText="Login" UserNameLabelText="Username:" UserNameRequiredErrorMessage="Username required"
                PasswordLabelText="Password:" PasswordRequiredErrorMessage="Password required"
                LoginButtonText="Log in" DisplayRememberMe="false">
                <LoginButtonStyle CssClass="loginbutton" />
                <TextBoxStyle CssClass="logintextbox" />
                <LabelStyle CssClass="loginText" />
                <TitleTextStyle CssClass="loginTitle" />
                <ValidatorTextStyle CssClass="loginValidator" />
            </asp:Login>
            <asp:ValidationSummary ID="ValidationSummary1" Font-Names="Arial" Visible="true"
                CssClass="vldSummary" runat="server" ValidationGroup="Login" HeaderText="Please correct the following errors:"
                Width="275px" />
            <br />
            <br />
            <div class="buttonArea">
                <a href="DisplayCode.aspx?page=login.aspx&code=login.aspx.cs&xml=locked/Web.config&page2=../Web.config"
                    target="_blank">
                    <img class="imgbutton" id="Img1" src="../img/codebuttonlogin.jpg" alt="login file"
                        runat="server" />
                </a>
            </div>
            <br />
        </div>
    </div>
    </form>
</body>
</html>
