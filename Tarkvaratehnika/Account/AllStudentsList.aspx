<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="AllStudentsList.aspx.cs" Inherits="Tarkvaratehnika.Account.AllStudentsList" %>
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
            <asp:BoundField DataField="FirstName" HeaderText="First name" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="Last name" SortExpression="LastName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="DateOfBirth" HeaderText="Date of birth" SortExpression="DateOfBirth" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DormMatchConnectionString %>" SelectCommand="SELECT [FirstName], [LastName], [Email], [DateOfBirth], [Gender] FROM [Registration]"></asp:SqlDataSource>
    <br />
</asp:Content>
