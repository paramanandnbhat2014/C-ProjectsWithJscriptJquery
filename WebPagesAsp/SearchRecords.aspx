<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchRecords.aspx.cs" Inherits="MeltionHotel.Ass2_locked_SearchRecords" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Search Records</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="searchtitle">
        <h2>
            Custom Search
        </h2>
        <hr />
    </div>

            <div class="searchbox">
                <asp:DropDownList ID="searchlist" class="searchlist" runat="server">
                    <asp:ListItem>Search by User Name</asp:ListItem>
                    <asp:ListItem>Search by Phone Number</asp:ListItem>
                    <asp:ListItem>Search by Email</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="searchbar" class="searchbar" runat="server" Text="Key Word" placeholder="Enter your Key Word"></asp:TextBox>
                <asp:Button ID="searchbutton" class="searchbutton" runat="server" Text="Go" OnClick="findUser" />
            </div>
            <br />
            <br />
            <br />
            <asp:AccessDataSource runat="server" DataFile="~/App_Data/user.accdb" ID="dataSource3"
                OnSelected="CountRows"></asp:AccessDataSource>
            <asp:AccessDataSource runat="server" DataFile="~/App_Data/user.accdb" ID="dataSource5">
            </asp:AccessDataSource>
            <div class="errormessage">
                <asp:Label ID="errormessage" runat="server"></asp:Label>
            </div>
            <asp:Label ID="totalResults" runat="server"></asp:Label>
            <asp:GridView ID="users" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                AutoGenerateColumns="False" OnRowCommand="displayRow">
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
                    <asp:BoundField DataField="adds" Visible="false" HeaderText="Address">
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
            <asp:ListView ID="lv" runat="server">
                <ItemTemplate>
                    <br />
                    <div>
                        <h3>
                            Individual Record</h3>
                    </div>
                    <hr />
                    <div class="recorddetail">
                        <div class="detailtitle">
                            <%# Eval("customerID") %>.&nbsp;
                            <%# Eval("title") %>
                            <%# Eval("firstName") %>
                            <%# Eval("lastName") %><span>'s Detail</span>
                        </div>
                        <div class="detailsubtitle">
                            <span>Customer ID :
                                <%# Eval("customerID") %>
                            </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>User Name:
                                <%# Eval("userName") %>
                            </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>Password:
                                <%# Eval("password") %>
                            </span>
                        </div>
                        <div class="smallbox">
                            <div class="boxtitle">
                                <p>
                                    Favourite</p>
                            </div>
                            <div class="boxcontent">
                                <p>
                                    Preferred Language:
                                    <%# Eval("preferLan") %></p>
                                <p>
                                    Favourite Website:
                                    <%# Eval("website") %></p>
                            </div>
                        </div>
                        <div class="smallbox">
                            <div class="boxtitle">
                                <p>
                                    Find me</p>
                            </div>
                            <div class="boxcontent">
                                <p>
                                    Address tYpe:
                                    <%# Eval("addsType") %></p>
                                <p>
                                    Address:
                                    <%# Eval("street") %>,
                                    <%# Eval("suburb") %>,
                                    <%# Eval("state") %></p>
                                <p>
                                    Post Code:
                                    <%# Eval("postcode") %></p>
                            </div>
                        </div>
                        <div class="smallbox">
                            <div class="boxtitle">
                                <p>
                                    Contact me
                                </p>
                            </div>
                            <div class="boxcontent">
                                <p>
                                    Phone Number:
                                    <%# Eval("phoneNumber") %></p>
                                <p>
                                    Email:
                                    <%# Eval("email") %></p>
                            </div>
                        </div>
                        <div class="smallbox">
                            <div class="boxtitle">
                                <p>
                                    Term</p>
                            </div>
                            <div class="boxcontent">
                                <p>
                                    Term Agreed:
                                    <%# Eval("checkbox") %></p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:ListView>
            <br />

    <br />
    <div class="buttonArea">
        <a href="../DisplayCode.aspx?page=locked/SearchRecords.aspx
                &code=locked/SearchRecords.aspx.cs" 
                target="_blank">
            <img class="imgbutton" id="Img2" src="../../img/codebuttonsearchrecords.jpg" alt="display record img"
                runat="server" />
        </a>
    </div>
    <br />
</asp:Content>
