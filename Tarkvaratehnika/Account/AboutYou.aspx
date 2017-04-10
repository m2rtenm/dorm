<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="AboutYou.aspx.cs" Inherits="Tarkvaratehnika.Account.AboutYou" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="form-horizontal">
        <style>
        a.brand {
            content: url(../Content/img/brand.png);
            max-width: 30%;
        }
    </style>
    <a runat="server" href="~/" class="brand">DormMatch</a>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
        <h4>Please fill in some information about yourself!</h4>
        <h5>Step 3: About you</h5>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Relationship" CssClass="col-md-2 control-label" Text="Are you in a relationship?"></asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="Relationship" runat="server">
                    <asp:ListItem>No</asp:ListItem>
                    <asp:ListItem>Yes</asp:ListItem>
                </asp:DropDownList>
            </div>
     </div>
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="License" CssClass="col-md-2 control-label" Text="Do you have a driver's license?"></asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="License" runat="server">
                    <asp:ListItem>No</asp:ListItem>
                    <asp:ListItem>Yes</asp:ListItem>
                </asp:DropDownList>
            </div>
     </div> 
     <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Cooking" CssClass="col-md-2 control-label" Text="How often do you cook?"></asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="Cooking" runat="server">
                    <asp:ListItem>I don't cook</asp:ListItem>
                    <asp:ListItem>Very rarely</asp:ListItem>
                    <asp:ListItem>Once a week</asp:ListItem>
                    <asp:ListItem>2-3 times a week</asp:ListItem>
                    <asp:ListItem>4-5 times a week</asp:ListItem>
                    <asp:ListItem>Every day</asp:ListItem>
                </asp:DropDownList>
            </div>
     </div>
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Party" CssClass="col-md-2 control-label" Text="How often do you party?"></asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="Party" runat="server">
                    <asp:ListItem>I don't party</asp:ListItem>
                    <asp:ListItem>Once in a couple of weeks</asp:ListItem>
                    <asp:ListItem>Once a week</asp:ListItem>
                    <asp:ListItem>2-3 times a week</asp:ListItem>
                    <asp:ListItem>More than 2-3 times a week</asp:ListItem>
                </asp:DropDownList>
            </div>
     </div>
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="MusicArtists" CssClass="col-md-2 control-label" Text="List your 3 favourite music artists"></asp:Label>
            <div class="col-md-10">
                 <asp:TextBox runat="server" ID="MusicArtists" CssClass="form-control" />
            </div>
     </div> 
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Movies" CssClass="col-md-2 control-label" Text="List your 3 favourite movies"></asp:Label>
            <div class="col-md-10">
                 <asp:TextBox runat="server" ID="Movies" CssClass="form-control" />
            </div>
     </div> 
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TVseries" CssClass="col-md-2 control-label" Text="List your 3 favourite TV series"></asp:Label>
            <div class="col-md-10">
                 <asp:TextBox runat="server" ID="TVseries" CssClass="form-control" />
            </div>
     </div> 
     <div class="form-group">
         <div class="col-md-offset-2 col-md-10">
                <asp:Button ID="Button1" runat="server" Text="Next" OnClick="Button1_Click"/>
         </div>
     </div>
</div>

</asp:Content>