<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisplayCode.aspx.cs" Inherits="MeltionHotel.Ass2_locked_DisplayCode" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Display Code</title>
    <link href="../App_Themes/skin/css/siteMap.css" rel="stylesheet" />
    <link href="../App_Themes/skin//css/masterPage.css" rel="stylesheet" />
    <link href="../App_Themes/skin//css/aboutUs.css" rel="stylesheet" />
    <link href="../App_Themes/skin//css/registration.css" rel="stylesheet" />
    <link href="../App_Themes/skin//css/faq.css" rel="stylesheet" />
    <link href="../App_Themes/skin/css/homePage.css" rel="stylesheet" />
    <link href="../App_Themes/skin/css/displayCode.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="content">
        <h1 class="pageHeader">
            Source Code</h1>
        <!-- 1  -->
        <asp:Label ID="pageFileName" CssClass="codeheader" runat="server" />
        <asp:Panel ID="Panel1" CssClass="code" runat="server" Visible="false">
            <asp:Label ID="pageCode" runat="server" />
        </asp:Panel>
        <!-- 2  -->
        <asp:Label ID="codeFileName" CssClass="codeheader" runat="server" />
        <asp:Panel ID="Panel2" CssClass="code" runat="server" Visible="false">
            <asp:Label ID="code" runat="server" />
        </asp:Panel>
        <!-- 3  -->
        <asp:Label ID="xmlFileName" CssClass="codeheader" runat="server" />
        <asp:Panel ID="Panel3" CssClass="code" runat="server" Visible="false">
            <asp:Label ID="xml" runat="server" />
        </asp:Panel>
        <!-- 4  -->
        <asp:Label ID="pageFileName2" CssClass="codeheader" runat="server" />
        <asp:Panel ID="Panel4" CssClass="code" runat="server" Visible="false">
            <asp:Label ID="pageCode2" runat="server" />
        </asp:Panel>
        <!-- 5  -->
        <asp:Label ID="codeFileName2" CssClass="codeheader" runat="server" />
        <asp:Panel ID="Panel5" CssClass="code" runat="server" Visible="false">
            <asp:Label ID="code2" runat="server" />
        </asp:Panel>
        <!-- 6  -->
        <asp:Label ID="pageFileName3" CssClass="codeheader" runat="server" />
        <asp:Panel ID="Panel6" CssClass="code" runat="server" Visible="false">
            <asp:Label ID="pageCode3" runat="server" />
        </asp:Panel>
        <!-- 7  -->
        <asp:Label ID="codeFileName3" CssClass="codeheader" runat="server" />
        <asp:Panel ID="Panel7" CssClass="code" runat="server" Visible="false">
            <asp:Label ID="code3" runat="server" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
