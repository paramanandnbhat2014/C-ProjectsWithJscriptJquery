<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="MeltionHotel.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Registration Form</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table tr:odd").css('background', '#ffffff');
            $(".table tr:even").css('background', '#d4ffaa');
        });
    </script>
    <script type="text/javascript">
        function ValidateCheckBox(sender, args) {
            if (document.getElementById("<%=check1.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
    </script>
    <script type="text/javascript">
        function validateLength1(source, argument) {
            var txtValue = document.getElementById("<%=TextBox1.ClientID %>").value;
            if (txtValue.length != 0) {
                if (txtValue.length >= 3)
                    argument.IsValid = true;
                else
                    argument.IsValid = false;
            }
        }
    </script>
    <script type="text/javascript">
        function validateLength2(source, argument) {
            var txtValue = document.getElementById("<%=TextBox2.ClientID %>").value;
            if (txtValue.length != 0) {
                if (txtValue.length >= 3)
                    argument.IsValid = true;
                else
                    argument.IsValid = false;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers>
            <asp:PostBackTrigger ControlID="Button2" />
        </Triggers>
        <ContentTemplate>
            <div>
                <div class="form-header">
                    <h2>
                        Registration Form</h2>
                </div>
                <div class="form">
                    <h4>
                        Personal Information</h4>
                    <hr />
                    <p>
                        <label for="DropDownList1">
                            Title</label>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Mr.</asp:ListItem>
                            <asp:ListItem>Mrs.</asp:ListItem>
                            <asp:ListItem>Miss</asp:ListItem>
                            <asp:ListItem>Ms</asp:ListItem>
                            <asp:ListItem>Dr.</asp:ListItem>
                        </asp:DropDownList>
                    </p>
                    <p>
                        <label for="TextBox1">
                            First Name*:
                        </label>
                        <asp:TextBox SkinID="TextBox" placeholder="First Name" ID="TextBox1" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Textbox1"
                            class="warning" Text="The First name field is required!" runat="server" />
                        <asp:CustomValidator ID="CustomValidator1" runat="server" 
                            ErrorMessage="Hint:First name at least 3 charactors"
                            ClientValidationFunction="validateLength1" EnableClientScript="true" CssClass="warning" />
                    </p>
                    <p>
                        <label for="TextBox2">
                            Last Name*:
                        </label>
                        <asp:TextBox SkinID="TextBox" placeholder="Last Name" ID="TextBox2" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" class="warning" 
                            ControlToValidate="Textbox2"
                            Text="The Last name field is required!" runat="server" />
                        <asp:CustomValidator ID="CustomValidator2" runat="server" 
                            ErrorMessage="Hint:Last name at least 3 charactors"
                            ClientValidationFunction="validateLength2" EnableClientScript="true" CssClass="warning" />
                    </p>
                    <p>
                        <label for="TextBox8">
                            Phone number*:
                        </label>
                        <asp:TextBox SkinID="TextBox" placeholder="Phone Number" ID="TextBox8" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" class="warning" 
                            ControlToValidate="Textbox8"
                            Text="The phone number field is required!" runat="server" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" class="warning"
                            ControlToValidate="TextBox8" ValidationExpression="^[0-9]{5,20}$" 
                            ErrorMessage="Hint: phone number must be at least 5 numeric digits "
                            runat="server" />
                    </p>
                    <p>
                        <label for="TextBox9">
                            User Name*:
                        </label>
                        <asp:TextBox SkinID="TextBox" placeholder="User Name" ID="TextBox9" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" class="warning" 
                            ControlToValidate="Textbox9"
                            Text="The user name field is required!" runat="server" />
                        <asp:RegularExpressionValidator ID="RegExp1" class="warning" runat="server" 
                            ErrorMessage="Hint: User name length must be between 3 to 10 characters"
                            ControlToValidate="TextBox9" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{3,10}$" />
                    </p>
                    <p>
                        <label for="TextBox10">
                            Password*:
                        </label>
                        <asp:TextBox SkinID="TextBox" TextMode="password" placeholder="Password" ID="TextBox10"
                            runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" class="warning" 
                            ControlToValidate="Textbox10"
                            Text="The password field is required!" runat="server" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" class="warning"
                            runat="server" ErrorMessage="Hint: Password length must be between 5 to 20 characters"
                            ControlToValidate="TextBox10" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{3,20}$" />
                    </p>
                    <p>
                        <label for="TextBox3">
                            Email address*:
                        </label>
                        <asp:TextBox SkinID="TextBox" placeholder="Email address" ID="TextBox3" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" class="warning" 
                            ControlToValidate="Textbox3"
                            Text="The email field is required!" runat="server" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" class="warning"
                            ControlToValidate="TextBox3" 
                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            Display="Static" EnableClientScript="true" 
                            ErrorMessage="Hint: invalid Email Address format"
                            runat="server" />
                    </p>
                    <p>
                        <label for="TextBox4">
                            Confirm Email address*:
                        </label>
                        <asp:TextBox SkinID="TextBox" placeholder="Email address" ID="TextBox4" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" class="warning" 
                            ControlToValidate="Textbox4"
                            Text="The email field is required!" runat="server" />
                        <asp:CompareValidator ID="compval" class="warning" Display="dynamic" 
                            ControlToValidate="TextBox3"
                            ControlToCompare="TextBox4" Type="String" EnableClientScript="true" 
                            Text="Hint: Email address must match."
                            runat="server" />
                    </p>
                    <p>
                        <label id="lang" for="listbox1">
                            Preferred Language:
                        </label>
                        <asp:ListBox SelectionMode="single" ID="listbox1" Rows="3" runat="server">
                            <asp:ListItem Selected="true">English</asp:ListItem>
                            <asp:ListItem>Chinese</asp:ListItem>
                            <asp:ListItem>French</asp:ListItem>
                            <asp:ListItem>Spanish</asp:ListItem>
                            <asp:ListItem>Greek</asp:ListItem>
                            <asp:ListItem>Italian</asp:ListItem>
                        </asp:ListBox>
                    </p>
                    <br />
                    <p>
                        <label for="TextBox11">
                            Favourite website*:
                        </label>
                        <asp:TextBox SkinID="TextBox" placeholder="my favourite website" ID="TextBox11" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" class="warning" 
                            ControlToValidate="Textbox11"
                            Text="The favourite website is required!" runat="server" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" class="warning"
                            runat="server" ErrorMessage="Hint: format example: http://www.google.com" 
                            ControlToValidate="TextBox11"
                            ValidationExpression="([a-zA-Z]{3,})://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?" />
                    </p>
                </div>
                <br />
                <div class="form">
                    <h4>
                        Address Information</h4>
                    <hr />
                    <p>
                        <label for="rblist1">
                            Address type*:
                        </label>
                        <asp:RadioButtonList ID="rblist1" runat="server">
                            <asp:ListItem Selected="true" Text="Resident" Value="Resident">&nbsp;&nbsp;Resident</asp:ListItem>
                            <asp:ListItem Text="Business" Value="Business">&nbsp;&nbsp;Business</asp:ListItem>
                        </asp:RadioButtonList>
                    </p>
                    <p>
                    </p>
                    <p>
                        <label for="TextBox6">
                            Street Address*:
                        </label>
                        <asp:TextBox ID="TextBox6" runat="server" placeholder="Street Address" SkinID="TextBox" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" class="warning"
                            ControlToValidate="Textbox6" Text="The street address field is required!" />
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" class="warning"
                            ControlToValidate="TextBox6" 
                            ErrorMessage="Hint: Street should not contain special characters like #,@,%."
                            ValidationExpression="^[a-zA-Z0-9\s]{1,100}$" />
                    </p>
                    <p>
                        <label for="TextBox7">
                            Suburb/Town*:
                        </label>
                        <asp:TextBox SkinID="TextBox" placeholder="Suburb/Town" ID="TextBox7" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" class="warning" 
                            ControlToValidate="Textbox7"
                            Text="The suburb/town field is required!" runat="server" />
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" class="warning"
                            runat="server" 
                            ErrorMessage="Hint: Suburb/Town should not contain special characters like #,@,%."
                            ControlToValidate="TextBox7" ValidationExpression="^[a-zA-Z0-9\s]{1,100}$" />
                    </p>
                    <p>
                        <label for="DropDownList2">
                            State*:</label>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>Australian Capital Territory</asp:ListItem>
                            <asp:ListItem>New South Wales</asp:ListItem>
                            <asp:ListItem>Northern Territory</asp:ListItem>
                            <asp:ListItem>Queensland</asp:ListItem>
                            <asp:ListItem>South Australia</asp:ListItem>
                            <asp:ListItem>Tasmania</asp:ListItem>
                            <asp:ListItem>Victoria</asp:ListItem>
                            <asp:ListItem>Western Australia</asp:ListItem>
                        </asp:DropDownList>
                    </p>
                    <p>
                        <label for="TextBox5">
                            Postcode:
                        </label>
                        <asp:TextBox SkinID="TextBox" placeholder="" MaxLength="4" ID="TextBox5" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" class="warning" 
                            ControlToValidate="Textbox5"
                            Text="The postcode field is required!" runat="server" />
                        <br />
                        <asp:RangeValidator ID="RangeValidator1" class="warning" Type="Integer" 
                            ControlToValidate="TextBox5"
                            MinimumValue="0" MaximumValue="9999" Text="The value must be from 0 to 9999!"
                            runat="server" />
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" class="warning"
                            ControlToValidate="TextBox5" ValidationExpression="^[0-9]{4,4}$" 
                            ErrorMessage=" Hint: Post code must be 4 numeric digits "
                            runat="server" />
                    </p>
                </div>
                <br />
                <h4>
                    Terms and Conditions</h4>
                <hr />
                <div class="row">
                    <asp:CheckBox ID="check1" runat="server" />
                    <span>Please review the Meltion Hotel Membership Terms and Conditions. To complete your
                        enrollment, you must indicate your acceptance and understanding of the Terms and
                        Conditions by checking the box on the left. </span>
                    <br />
                    <asp:CustomValidator runat="server" ID="CheckBoxRequired" EnableClientScript="true"
                        ClientValidationFunction="ValidateCheckBox" 
                        ErrorMessage="You must select this box to proceed."
                        CssClass="warning"></asp:CustomValidator>
                </div>
                <br />
                <br />
                <br />
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <div class="footer">
        <input type="reset" class="button-red" value="Reset" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" SkinID="Button-green" runat="server" Text="Submit" OnClick="Button2_Click" />
        <asp:AccessDataSource ID="userDataSource" runat="server" DataFile="~/App_Data/user.accdb"
            InsertCommand="INSERT INTO [userInfo]([userName], [password], [firstName], [lastName], [phoneNumber], [email], [preferLan], [website], [addsType], [street], [suburb], [state], [checkbox], [postcode], [title]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
            SelectCommand="SELECT userInfo.* FROM userInfo">
            <InsertParameters>
                <asp:ControlParameter Name="userName" ControlID="TextBox9" Type="String" PropertyName="Text" />
                <asp:ControlParameter Name="password" ControlID="TextBox10" Type="String" PropertyName="Text" />
                <asp:ControlParameter Name="firstName" ControlID="TextBox1" Type="String" PropertyName="Text" />
                <asp:ControlParameter Name="lastName" ControlID="TextBox2" Type="String" PropertyName="Text" />
                <asp:ControlParameter Name="phoneNumber" ControlID="TextBox8" Type="String" PropertyName="Text" />
                <asp:ControlParameter Name="email" ControlID="TextBox3" Type="String" PropertyName="Text" />
                <asp:ControlParameter Name="preferLan" ControlID="listbox1" Type="String" PropertyName="SelectedValue" />
                <asp:ControlParameter Name="website" ControlID="TextBox11" Type="String" PropertyName="Text" />
                <asp:ControlParameter Name="addsType" ControlID="rblist1" Type="String" PropertyName="SelectedValue" />
                <asp:ControlParameter Name="street" ControlID="TextBox6" Type="String" PropertyName="Text" />
                <asp:ControlParameter Name="suburb" ControlID="TextBox7" Type="String" PropertyName="Text" />
                <asp:ControlParameter Name="state" ControlID="DropDownList2" Type="String" PropertyName="SelectedValue" />
                <asp:ControlParameter Name="checkbox" ControlID="check1" Type="Boolean" PropertyName="Checked" />
                <asp:ControlParameter Name="postcode" ControlID="TextBox5" Type="String" PropertyName="Text" />
                <asp:ControlParameter Name="title" ControlID="DropDownList1" Type="String" PropertyName="SelectedValue" />
            </InsertParameters>
        </asp:AccessDataSource>
    </div>
    <br />
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel1" Visible="false" runat="server" CssClass="span4">
        <br />
        <br />
        <h2>
            Registration Information</h2>
        <hr />
        <h4>
            Personal Information</h4>
        <table class="table">
            <tr>
                <td>
                    Title
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    First Name
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Last Name
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    User Name
                </td>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Password
                </td>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Phone number
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Email Address
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Prefered Language
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    My Favourite Website
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank"></asp:HyperLink>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <hr />
        <h4>
            Address Information</h4>
        <table class="table">
            <tr>
                <td>
                    Address type
                </td>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Street
                </td>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Suburb/Town
                </td>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    State
                </td>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Postcode
                </td>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Label ID="Label12" class="span6" runat="server"></asp:Label><br />
        <asp:Label ID="Label15" class="span6" runat="server">Registration succeeds.</asp:Label>
        <br />
        <br />
    </asp:Panel>
    <br class="newline" />
    <br />
    <div id="viewAllRecords">
        <a class="seeall" href="ViewAllRecords.aspx" target="_blank">
            <p>
                Click here to see All user information</p>
        </a>
    </div>
    <div id="searchRecords">
        <a class="searchrecords" href="SearchRecords.aspx" target="_blank">
            <p>
                Click here to search records</p>
        </a>
    </div>
    <br class="newline" />
    <br />
    <div class="buttonArea">
        <a href="../DisplayCode.aspx?page=locked/Registration.aspx
                &code=locked/Registration.aspx.cs" 
                target="_blank">
            <img class="imgbutton" id="Img1" src="../../img/codebuttonAddRecords.jpg" alt="add record img"
                runat="server" />
        </a>
    </div>
    <br />
    <br />
</asp:Content>
