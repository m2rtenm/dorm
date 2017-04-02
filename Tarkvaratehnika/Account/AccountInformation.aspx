<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="AccountInformation.aspx.cs" Inherits="Tarkvaratehnika.Account.AccountInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Menu ID="Menu1" runat="server">
        <Items>
            <asp:MenuItem NavigateUrl="~/Account/AllStudentsList.aspx" Text="All Students" Value="All Students"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Account/SentRequests.aspx" Text="Sent Requests" Value="Sent Requests"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Account/ReceivedRequests.aspx" Text="Received Requests" Value="Received Requests"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Account/AccountInformation.aspx" Text="My Account" Value="My Account"></asp:MenuItem>
        </Items>
    </asp:Menu>
</asp:Content>
