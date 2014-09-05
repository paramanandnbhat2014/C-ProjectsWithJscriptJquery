<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Email.aspx.cs" Inherits="MeltionHotel.Ass2_locked_Email" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Email</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:AccessDataSource ID="dataSource4" runat="server" DataFile="~/App_Data/user.accdb"
        SelectCommand="SELECT CustomerID, firstName, lastName,email FROM userInfo ORDER BY firstName">
    </asp:AccessDataSource>
    <br />
    <asp:Label ID="response" CssClass="errormessage" runat="server" />
    <br />
    <div class="emailtitle">
            Send Email
    </div>
    <p />
    <table class="emailTable">
        <tr>
            <td class="emailHeader">
                FROM
            </td>
            <td class="emailRow">
                Meltion Hotel
            </td>
        </tr>
        <tr>
            <td class="emailHeader">
                TO
            </td>
            <td class="emailRow">
                <asp:GridView ID="users" runat="server" DataSourceID="dataSource4" DataKeyNames="CustomerID"
                    AutoGenerateColumns="false" CellPadding="5" ForeColor="#333333" GridLines="None">
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
                        <asp:BoundField DataField="customerID" Visible="false">
                            <ItemStyle CssClass="field"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="firstName" HeaderText="First Name">
                            <ItemStyle CssClass="field"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="lastName" HeaderText="Last Name">
                            <ItemStyle CssClass="field"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="email" HeaderText="Email">
                            <ItemStyle CssClass="field"></ItemStyle>
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Select">
                            <ItemTemplate>
                                <asp:CheckBox runat="server" ID="checkEmail" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="emailHeader">
                SUBJECT
            </td>
            <td class="emailRow">
                <asp:TextBox ID="subjectTxt" class="emailbox" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" class="warning" ControlToValidate="subjectTxt"
                    Text="The subject field is required!" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="emailHeader">
                MESSAGE
            </td>
            <td class="emailRow">
                <asp:TextBox runat="server" class="emailbox" ID="MessageTxt" TextMode="MultiLine"
                    Columns="48" Rows="15" /><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" class="warning" 
                    ControlToValidate="MessageTxt"
                    Text="The message field is required!" 
                    runat="server" />
            </td>
        </tr>
    </table>
    <div class="buttonwidth">
        <asp:Button ID="SendMail" class="buttonfield" runat="server" OnClick="SendEmail"
            Text="SEND EMAIL" />
    </div>
    <br />
    <br />
    <div class="buttonArea">
        <a href="../DisplayCode.aspx?page=locked/Email.aspx
                &code=locked/Email.aspx.cs" 
                target="_blank">
            <img class="imgbutton" id="Img2" src="../../img/codebuttonEmail.jpg" alt="email file"
                runat="server" />
        </a>
    </div>
    <br />
</asp:Content>
