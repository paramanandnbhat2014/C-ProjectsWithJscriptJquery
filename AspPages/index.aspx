<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="MeltionHotel.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Home</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script type="text/javascript" src="./js/emailForm.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="image-container">
        <img src="../img/family.jpg" alt="family image" />
        <span class="image-text .image-text-simple">
            <label>
                Meltion Hotel</label><br />
            <small>Meltion Hotel family Package: Treat yourself a wonderful and rommantic holiday
                with your family.</small> </span>
    </div>
    <br class="newline" />
    <div class="image-header">
        <h3>
            Meltion Hotel
        </h3>
        <h4>
            Meltion Hotel family Package: Treat yourself a wonderful and rommantic holiday with
            your family.</h4>
    </div>
    <br />
    <hr />
    <h4>
        &nbsp;&nbsp; Events</h4>
    <div class="block-container">
        <div class="event-fragment">
            <div class="event-frame">
                <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="./XML/seeDo.xml" />
                <a href="http://www.thatsmelbourne.com.au/Placestogo/Pages/placestogo.aspx" class="right">
                    See & Do>></a>
            </div>
            <a href="http://www.thatsmelbourne.com.au/Placestogo/Pages/placestogo.aspx" class="right">
                See & Do>></a>
        </div>
        <div class="event-fragment">
            <div class="event-frame">
                <asp:AdRotator ID="AdRotator2" runat="server" AdvertisementFile="./XML/eatDrink.xml" />
                <a href="http://www.thatsmelbourne.com.au/DiningandNightlife/Pages/DiningandNightlife.aspx"
                    class="right">Eat & Drink>></a>
            </div>
            <a href="http://www.thatsmelbourne.com.au/DiningandNightlife/Pages/DiningandNightlife.aspx"
                class="right">Eat & Drink>></a>
        </div>
        <div class="event-fragment">
            <div class="event-frame">
                <asp:AdRotator ID="AdRotator3" runat="server" AdvertisementFile="./XML/shopping.xml" />
                <a href="http://www.thatsmelbourne.com.au/Shopping/Pages/Shopping.aspx" class="right">
                    Shopping>></a>
            </div>
            <a href="http://www.thatsmelbourne.com.au/Shopping/Pages/Shopping.aspx" class="right">
                Shopping>></a>
        </div>
    </div>
    <br class="newline" />
    <br />
    <hr class="newline color-grey" />
    <div class="block-container">
        <div class="padding-claimer">
            <a href="http://users.monash.edu.au/~sgrose/msh/disclaimer.htm">Monash Disclaimer
            </a>
        </div>
        <span class="padding">Email:<asp:HyperLink ID="HyperLink1" runat="server" Target="_blank"
            NavigateUrl="mailto:hli92@student.monash.edu">Author</asp:HyperLink></span>
        <br class="newline" />
        <br />
        <span class="padding">Email:<asp:HyperLink ID="HyperLink2" runat="server" Target="_blank"
            NavigateUrl="mailto:hli92@student.monash.edu">Web Master</asp:HyperLink></span>
        <br class="newline" />
    </div>
    <br />
    <hr class="newline color-grey" />
    <div class="block-container">
        <h4>
            Aknowledgement</h4>
        <h5>
            All text and images in this website copyright 2013 Haoyu Li.</h5>
        <h4>
            Exceptions</h4>
        <div>
            <h5>
                The links of AdRotators are from the website: <a href="http://www.thatsmelbourne.com.au/Pages/Home.aspx">
                    http://www.thatsmelbourne.com.au/Pages/Home.aspx </a>
            </h5>
            <h5>
                Google Map Source code(iframe): <a href="https://maps.google.com.au/maps?q=Brighton+Road,+St+Kilda,+Victoria+3182&hl=en&ll=-37.878444,145.002365&spn=0.036787,0.084543&sll=-37.860283,145.079616&sspn=1.177489,2.705383&hnear=Brighton+Rd,+St+Kilda+Victoria+3182&t=m&z=14">
                    Click Source code Link for Map</a>
            </h5>
        </div>
    </div>
    <br />
    <div id="buttonArea" class="buttonArea">
        <a href="DisplayCode.aspx?page=index.aspx
                &code=index.aspx.cs
                &xml=../Web.sitemap
                &page2=XML/eatDrink.xml
                &code2=XML/seeDo.xml
                &page3=XML/shopping.xml"
                target="_blank">
            <img class="imgbutton" src="../img/Addrotator.jpg" alt="adrotator" runat="server" />
        </a>
        <a href="DisplayCode.aspx?page=../MasterPage.master
                &code=../MasterPage.master.cs"
                target="_blank">
            <img class="imgbutton" src="../img/codebuttonMasterPage.jpg" alt="adrotator" runat="server" />
        </a>
    </div>
</asp:Content>
