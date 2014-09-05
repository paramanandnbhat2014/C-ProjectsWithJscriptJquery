<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="MeltionHotel.FAQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>FAQ</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
    </script>
    <script type="text/javascript" src="../js/faq.js">
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <fieldset id="faq-container">
        <legend>
            <h2>FAQ</h2>
        </legend>
        <p>Here you will find more information about our services . <strong>Click on the questions below</strong> to read more.</p>
        <br />
        <hr />

        <!-- FAQ-->
        <div id="faq">
            <!-- question 1-->
                <h4>1. How can I register to be a member of the Meltion Hotels?</h4>
                <div>
                    <p>
                        Registration can be made via the websites www.meltionhotel.com.au<p>
                </div>

            <!-- question 2-->
            <h4>2. How can I know more about the history of Meltion Hotel?</h4>
            <div>
                <p>
                    Move you mouse to the "About Us" button, then click "Our history".<p>
            </div>

            <!-- question 3-->
            <h4>3. Is there any public transportation available to/from the airport?</h4>
            <div>
                <p>
                    Yes,  Skybus is available for 7 days a week. Another public transaports like trians are also close to the hotel.<p>
            </div>

            <!-- question 4-->
            <h4>4. What kind of rooms does the hotel provide?</h4>
            <div>
                <p>
                    We provides serveral kinds of room for the customers, such as Deluxe room, Balcony room, apartment.etc.<p>
            </div>

            <!-- question 5-->
            <h4>5. Where is the hotel located?</h4>
            <div>
                <p>
                    Meltion Hotel is located in the city of Melbourne, near Southerncross station.
                    <p>
            </div>

            <!-- question 6-->
            <h4>6. Is breakfast included for all room rates?</h4>
            <div>
                <p>
                    Yes,  we also offers desserts and drinks for guests.
                    <p>
            </div>

            <!-- question 7-->
            <h4>7. Do I need to pay a deposit for booking?</h4>
            <div>
                <p>
                    No,  you can just make a booking online or call:0332901020.And then pay during check-in.
                    <p>
            </div>

            <!-- question 8-->
            <h4>8. Is breakfast included for all room rates?</h4>
            <div>
                <p>
                    Yes,  we also offers desserts and drinks for guests.<p>
            </div>

            <!-- question 9-->
            <h4>9. Does your hotel have a gym?</h4>
            <div>
                <p>
                    Yes,  We also offer a large swimming pool and you also go to the beach and enjoy the sunshine.
                    <p>
            </div>

            <p>
        </div>
        <!-- FAQ-->
    </fieldset>
    <br />
</asp:Content>
