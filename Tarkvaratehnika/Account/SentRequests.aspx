<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SentRequests.aspx.cs" Inherits="Tarkvaratehnika.Account.SentRequests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Menu ID="Menu1" runat="server">
        <Items>
            <asp:MenuItem NavigateUrl="~/Account/AllStudentsList.aspx" Text="All Students" Value="All Students"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Account/SentRequests.aspx" Text="Sent Requests" Value="Sent Requests"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Account/ReceivedRequests.aspx" Text="Received Requests" Value="Received Requests"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Account/Account.aspx" Text="My Account" Value="My Account"></asp:MenuItem>
        </Items>
    </asp:Menu>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="You have sent a request to" SortExpression="FirstName" />
            <asp:BoundField DataField="Personality" HeaderText="Their personality" SortExpression="Personality" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DormMatchConnectionString %>" SelectCommand="SELECT Registration.FirstName, Registration.Personality
FROM Registration
INNER JOIN Requests ON Registration.ID = Requests.FromID
WHERE
(SELECT ID FROM Registration WHERE UserName = @user) = FromID">
        <SelectParameters>
            <asp:SessionParameter Name="user" SessionField="name" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />

</asp:Content>
