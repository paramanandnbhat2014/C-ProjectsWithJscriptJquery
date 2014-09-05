<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewAllRecords.aspx.cs" Inherits="MeltionHotel.Ass2_locked_ViewAllRecords" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>View All Records</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="recordheader">
        <p>
            Customer Information List</p>
    </div>

            <asp:AccessDataSource runat="server" DataFile="~/App_Data/user.accdb" ID="dataSource2"
                SelectCommand="SELECT userInfo.*, street + ', ' +suburb + ', ' + state AS adds FROM userInfo">
            </asp:AccessDataSource>
            <asp:AccessDataSource runat="server" DataFile="~/App_Data/user.accdb" ID="dataSource9">
            </asp:AccessDataSource>
            <asp:GridView ID="users" runat="server" CellPadding="4" DataSourceID="dataSource2"
                ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" OnRowCommand="displayRow">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                <Columns>
                    <asp:ButtonField ButtonType="Button" Text="Select" ItemStyle-VerticalAlign="Top"
                        ControlStyle-CssClass="buttonfield" />
                    <asp:BoundField DataField="customerID" HeaderText="ID" ReadOnly="True">
                        <ItemStyle CssClass="field"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="userName" HeaderText="User Name">
                        <ItemStyle CssClass="field"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="password" Visible="false" HeaderText="Pass word">
                        <ItemStyle CssClass="field orangetext"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="title" Visible="false" HeaderText="Title">
                        <ItemStyle CssClass="field"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="firstName" Visible="false" HeaderText="First Name">
                        <ItemStyle CssClass="field"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="lastName" Visible="false" HeaderText="Last Name">
                        <ItemStyle CssClass="field"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="phoneNumber" HeaderText="Phone">
                        <ItemStyle CssClass="field"></ItemStyle>
                    </asp:BoundField>
                    <asp:HyperLinkField DataTextField="email" HeaderText="Email" DataNavigateUrlFields="email"
                        DataNavigateUrlFormatString="mailto:{0}" NavigateUrl="mailto:{0}" Target="_blank">
                        <ItemStyle CssClass="field orangetext"></ItemStyle>
                    </asp:HyperLinkField>
                    <asp:BoundField DataField="preferLan" HeaderText="Language">
                        <ItemStyle CssClass="field"></ItemStyle>
                    </asp:BoundField>
                    <asp:HyperLinkField DataTextField="website" HeaderText="Website" DataNavigateUrlFields="website"
                        DataNavigateUrlFormatString="{0}" Target="_blank">
                        <ItemStyle CssClass="field"></ItemStyle>
                    </asp:HyperLinkField>
                    <asp:BoundField DataField="addsType" Visible="false" HeaderText="Add Type">
                        <ItemStyle CssClass="field"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="adds" HeaderText="Address">
                        <ItemStyle CssClass="field"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="postCode" Visible="false" HeaderText="Post code">
                        <ItemStyle CssClass="field"></ItemStyle>
                    </asp:BoundField>
                    <asp:CheckBoxField DataField="checkbox" HeaderText="Term Agreed">
                        <ItemStyle CssClass="field"></ItemStyle>
                    </asp:CheckBoxField>
                </Columns>
            </asp:GridView>
            <br />
            <div>
                <p id="Infotitle">
                    <asp:Label ID="titleInfo" runat="server"></asp:Label>
                </p>
            </div>
            <asp:DetailsView ID="detailView1" runat="server" CssClass="tabledisplay">
            </asp:DetailsView>
            <br class="newline" />
            <br />

    <div class="buttonArea">
        <a href="../DisplayCode.aspx?page=locked/ViewAllRecords.aspx
                &code=locked/ViewAllRecords.aspx.cs" 
                target="_blank">
            <img class="imgbutton" id="Img2" src="../../img/codebuttondisplayrecords.jpg" alt="display record img"
                runat="server" />
        </a>
    </div>
</asp:Content>
