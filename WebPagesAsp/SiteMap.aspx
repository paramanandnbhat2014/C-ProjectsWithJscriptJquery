<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SiteMap.aspx.cs" Inherits="MeltionHotel.SiteMap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Site map</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <fieldset>
        <legend>
            <h2>Site Map</h2>
        </legend>
        <div>
            <asp:TreeView ID="TreeView1" SkinID="treeView" runat="server" 
                DataSourceID="SiteMapDataSource1" ImageSet="Arrows"  ShowLines="True">
            </asp:TreeView>
        </div>
        <br />
    </fieldset>
    <br />
     <div class="buttonArea">
        <a href="../DisplayCode.aspx?page=loecked/SiteMap.aspx
                &code=locked/SiteMap.aspx.cs"
                target="_blank">
        <img class="imgbutton" id="Img1" src="../../img/codebuttonSiteMap.jpg" alt="ABOUT US" runat="server" />
    </a>
    </div>
    <br />
</asp:Content>
