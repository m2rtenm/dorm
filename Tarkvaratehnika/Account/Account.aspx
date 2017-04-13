<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="Tarkvaratehnika.Account.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <style>
        a.level1.static{
            text-align:left;
            font-family:Roboto;
            color: black;
            font-size: medium;
        }
        a.brand {
            content: url(../Content/img/brand.png);
            max-width: 30%;
        }
      </style>
    <a runat="server" href="~/" class="brand">DormMatch</a>
    <div class="form-horizontal">
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem NavigateUrl="~/Account/AllStudentsList.aspx" Text="All Students" Value="All Students"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Account/SentRequests.aspx" Text="Sent Requests" Value="Sent Requests"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Account/ReceivedRequests.aspx" Text="Received Requests" Value="Received Requests"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Account/AccountInformation.aspx" Text="My Account" Value="My Account"></asp:MenuItem>
            </Items>
        </asp:Menu>
    </div>
    <div class="form-horizontal">
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Welcome" ID="Welcome">Welcome, </asp:Label> <asp:Label runat="server" AssociatedControlID ="Username" ID="Username"></asp:Label>
        </div>
        <div class="form-group">
            <asp:Button runat="server" ID="LogOutButton" OnClick="LogOutButton_Click" Text="Logout" />
        </div>
        <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="Andmebaas" >
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Andmebaas" runat="server" ConnectionString="<%$ ConnectionStrings:DormMatchConnectionString %>" SelectCommand="SELECT [FirstName] FROM [Registration] WHERE ([Email] &lt;&gt; @Email)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Username" Name="Email" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>


</asp:Content>
