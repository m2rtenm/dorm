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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DormMatchConnectionString %>" SelectCommand="SELECT T.FirstName FROM Compatibilities AS C INNER JOIN Personalities AS FP ON C.from_personality = FP.Id INNER JOIN Personalities ON C.to_personality = Personalities.Id INNER JOIN Registration AS T ON Personalities.LongName = T.Personality INNER JOIN Registration AS F ON FP.LongName = F.Personality WHERE (F.Email = @user_email)">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="" Name="user_email" SessionField="name" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div class="form-group">
            <asp:Button runat="server" ID="LogOutButton" OnClick="LogOutButton_Click" Text="Logout" />
        </div> 
        <div class="form-group">

        </div>
    </div>
</asp:Content>
