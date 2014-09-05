<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="MeltionHotel.AboutUs" %>

<asp:content id="Content1" contentplaceholderid="head" runat="Server">
    <title>About Us</title>
</asp:content>
<asp:content id="Content2" contentplaceholderid="ContentPlaceHolder1" runat="Server">
    <fieldset id="aboutUs">
        <legend>
            <h2>
                About Us</h2>
        </legend>
        <br />
        <br />
        <div>
            <iframe width="600" height="250" frameborder="0" scrolling="no" marginheight="0"
                marginwidth="0" 
            src="https://maps.google.com.au/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brighton+Road,+St+Kilda,+Victoria&amp;aq=
            &amp;sll=-37.901949,145.011635&amp;sspn=0.147101,0.338173&amp;ie=UTF8&amp;hq=&amp;hnear=Brighton+Rd,+St+Kilda+Victoria+3182
            &amp;t=m&amp;z=13&amp;iwloc=A&amp;output=embed">
            </iframe>
            <br />
            <small>View <a href="https://maps.google.com.au/maps?f=q&amp;source=embed&amp;" +
            "hl=en&amp;geocode=&amp;q=Brighton+Road,+St+Kilda,+Victoria&amp;aq=&amp;" +
            "sll=-37.901949,145.011635&amp;sspn=0.147101,0.338173&amp;ie=UTF8&amp;hq=&amp;" +
            "hnear=Brighton+Rd,+St+Kilda+Victoria+3182&amp;t=m&amp;z=13&amp;iwloc=A"
                style="color: #0000FF; text-align: left">Meltion Hotel</a> in a larger map</small>
            <br />
            <h3>
                Meltion Hotel</h3>
            <p>
                Meltion Hotel is a eco-friendly hotel, providing the best services for guests.
            </p>
            <p>
                Our hotel is located near St kilda beach. There are more than 100 rooms provided
                in the hotel, which includes Single room, Balcony room, deluxe room and apartments.
                Each kinks of rooms offer different in-room services. We also provides the morning
                breakfast for guests.
            </p>
            <p>
                In our hotel, we also offers various packages and special offers during different
                periods, such as family holiday package, Christmas packages, business travel package
                and so on, which provides multiple choice to meet guest's requirements.</p>
            <p>
                Moreover, our hotel provides gym service for guests and we have a large in-room
                swimming pool. Guest can also go to the beach to enjoy the sunshine.</p>
            <h3>
                Contact detail</h3>
            <p>
                <b>Address:&nbsp; </b>Brighton Road, St Kilda, Victoria 3182.</p>
            <p>
                <b>Trading Hours:&nbsp; </b>7:00 am to 11:30 pm
            </p>
            <p>
                <b>Working Days:&nbsp; </b>Open 7 days per week</p>
            <p>
                <b>Phone No:&nbsp; </b>0390288123</p>
            <br />
            <br />
        </div>
    </fieldset>
    <br />
     <div class="buttonArea">
    <a href="../DisplayCode.aspx?page=locked/AboutUs.aspx
            &code=locked/AboutUs.aspx.cs
            &page2=locked/History.aspx
            &code2=locked/History.aspx.cs
            &page3=locked/FAQ.aspx
            &code3=locked/FAQ.aspx.cs"
            target="_blank">
        <img class="imgbutton" id="Img1" src="../../img/codebuttonAboutus.jpg" alt="ABOUT US" runat="server" />
    </a>
    </div>
    <br />
</asp:content>
