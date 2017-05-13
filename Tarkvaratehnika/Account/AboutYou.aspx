<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AboutYou.aspx.cs" Inherits="Tarkvaratehnika.Account.AboutYou" %>
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
            <asp:Label runat="server" AssociatedControlID="MusicArtists1" CssClass="col-md-2 control-label" Text="Name your first favourite music artist"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="MusicArtists1" CssClass="form-control" /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="MusicArtists1" ErrorMessage="Please fill in all the fields!"></asp:RequiredFieldValidator>
                   </div>
     </div>
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="MusicArtists2" CssClass="col-md-2 control-label" Text="Name your second favourite music artist"></asp:Label>
            <div class="col-md-10">
                 <asp:TextBox runat="server" ID="MusicArtists2" CssClass="form-control" /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="MusicArtists2" ErrorMessage="Please fill in all the fields!"></asp:RequiredFieldValidator>
            </div>
     </div>
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="MusicArtists3" CssClass="col-md-2 control-label" Text="Name your third favourite music artist"></asp:Label>
            <div class="col-md-10">
                 <asp:TextBox runat="server" ID="MusicArtists3" CssClass="form-control" /><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="MusicArtists3" ErrorMessage="Please fill in all the fields!"></asp:RequiredFieldValidator>
            </div>
     </div> 
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Movies1" CssClass="col-md-2 control-label" Text="Name your first favourite movie"></asp:Label>
            <div class="col-md-10">
                 <asp:TextBox runat="server" ID="Movies1" CssClass="form-control" /><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Movies1" ErrorMessage="Please fill in all the fields!"></asp:RequiredFieldValidator>
            </div>
     </div>
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Movies2" CssClass="col-md-2 control-label" Text="Name your second favourite movie"></asp:Label>
            <div class="col-md-10">
                 <asp:TextBox runat="server" ID="Movies2" CssClass="form-control" /><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Movies2" ErrorMessage="Please fill in all the fields!"></asp:RequiredFieldValidator>
            </div>
     </div>
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Movies3" CssClass="col-md-2 control-label" Text="Name your third favourite movie"></asp:Label>
            <div class="col-md-10">
                 <asp:TextBox runat="server" ID="Movies3" CssClass="form-control" /><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Movies3" ErrorMessage="Please fill in all the fields!"></asp:RequiredFieldValidator>
            </div>
     </div> 
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TVseries1" CssClass="col-md-2 control-label" Text="Name your first favourite TV series"></asp:Label>
            <div class="col-md-10">
                 <asp:TextBox runat="server" ID="TVseries1" CssClass="form-control" /><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TVseries1" ErrorMessage="Please fill in all the fields!"></asp:RequiredFieldValidator>
            </div>
     </div>
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TVseries2" CssClass="col-md-2 control-label" Text="Name your second favourite TV series"></asp:Label>
            <div class="col-md-10">
                 <asp:TextBox runat="server" ID="TVseries2" CssClass="form-control" /><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TVseries2" ErrorMessage="Please fill in all the fields!"></asp:RequiredFieldValidator>
            </div>
     </div> 

    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TVseries3" CssClass="col-md-2 control-label" Text="Name your third favourite TV series"></asp:Label>
            <div class="col-md-10">
                 <asp:TextBox runat="server" ID="TVseries3" CssClass="form-control" /><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TVseries3" ErrorMessage="Please fill in all the fields!"></asp:RequiredFieldValidator>
            </div>
     </div> 
    <div class="form-group">
        <asp:Label runat="server" AssociatedControlID="Bio" CssClass="col-md-2 control-label" Text="Write something about yourself"></asp:Label>
        <textarea id="Bio" cols="30" rows="3" runat="server" CssClass="form-control"></textarea>
    </div>
 
     <div class="form-group">
         <div class="col-md-offset-2 col-md-10">
                <asp:Button ID="Button1" runat="server" Text="Next" OnClick="Button1_Click"/>
         </div>
     </div>
</div>

    </div>
</asp:Content>