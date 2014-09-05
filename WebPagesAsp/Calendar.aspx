<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calendar.aspx.cs" Inherits="MeltionHotel.Ass2_locked_Calendar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Calendar</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

            <asp:AccessDataSource runat="server" DataFile="~/App_Data/user.accdb" ID="dsEvent1">
            </asp:AccessDataSource>
             <asp:AccessDataSource runat="server" DataFile="~/App_Data/user.accdb" ID="selectChangedDB1">
            </asp:AccessDataSource>
            <div class="calendarleft">
                <asp:Calendar ID="Calendar21" class="calendar-bg" runat="server" SkinID="calendar"
                    OnDayRender="dayRender" FirstDayOfWeek="Sunday" CellPadding="4" CellSpacing="2"
                    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="13pt" ForeColor="Black"
                    Height="300px" Width="360px" >
                    <TitleStyle BackColor="#FFFFFF" ForeColor="#339966" Font-Bold="True" Font-Size="12pt" />
                    <DayHeaderStyle BackColor="#339966" ForeColor="#FFFFFF" Font-Bold="True" Font-Size="12pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#CCCCCC" BackColor="#E1EBEB" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" CssClass="calendar-today" />
                    <WeekendDayStyle CssClass="calendar-weekend" />
                </asp:Calendar>
            </div>
            <p />

            <asp:Label ID="todayDate1" class="calendarleft" Visible="false" Text="Events For Today" runat="server" />
            <asp:ListView ID="ListView11" Visible="false" runat="server">
                <ItemTemplate>
                    <div class="floatleft">
                        <p>Event Description</p> 
                        <asp:Label  Text='<%# Eval("EventDescription") %>' runat="server"></asp:Label>
                        <br />
                        <p>Event Time</p> 
                        <asp:Label Text='<%# Eval("EventDate", @"{0:dd/M/yyyy}") %>' runat="server"></asp:Label>
                        <asp:Label Text='<%# Eval("EventTime", @"{0:h\:mm tt}") %>' runat="server"></asp:Label>
                        <br />
                    </div>
                </ItemTemplate>
            </asp:ListView>
            <asp:Label ID="eventDesc1" class="calendarleft" runat="server"></asp:Label>
            
            
            
            <br class="newline"/>
            <br />
            <asp:Label ID="selectedDateLabel1" Visible="false" class="calendarleft" Text="Events For Selected Day" runat="server"></asp:Label>
            <br />
            <asp:ListView ID="ListView21" Visible="false" runat="server">
                <ItemTemplate>
                    <div class="floatleft">
                        <p>Event Description</p> 
                        <asp:Label  Text='<%# Eval("EventDescription") %>' runat="server"></asp:Label>
                        <br />
                        <p>Event Time</p> 
                        <asp:Label Text='<%# Eval("EventDate", @"{0:dd/M/yyyy}") %>' runat="server"></asp:Label>
                        <asp:Label Text='<%# Eval("EventTime", @"{0:h\:mm tt}") %>' runat="server"></asp:Label>
                        <br />
                    </div>
                </ItemTemplate>
            </asp:ListView>
            <asp:Label ID="eventDesc21" class="calendarleft" runat="server"></asp:Label>

</asp:Content>
