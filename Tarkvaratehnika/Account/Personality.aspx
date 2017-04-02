<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Personality.aspx.cs" Inherits="Tarkvaratehnika.Account.Personality" %>
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
        <h5>Step 5: Personality</h5>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
    
     </div> 
     <a runat="server" href="https://www.16personalities.com/free-personality-test" target="_blank" >Please take this personality quiz to know your personality type</a>
     <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="PersonalityType" CssClass="col-md-2 control-label" Text="Personality"></asp:Label>
            <div class="col-md-10">
                 <asp:DropDownList ID="PersonalityType" runat="server">
                     <asp:ListItem>Architect</asp:ListItem>
                     <asp:ListItem>Logician</asp:ListItem>
                     <asp:ListItem>Commander</asp:ListItem>
                     <asp:ListItem>Debater</asp:ListItem>
                     <asp:ListItem>Advocate</asp:ListItem>
                     <asp:ListItem>Mediator</asp:ListItem>
                     <asp:ListItem>Protagonist</asp:ListItem>
                     <asp:ListItem>Campaigner</asp:ListItem>
                     <asp:ListItem>Logistician</asp:ListItem>
                     <asp:ListItem>Defender</asp:ListItem>
                     <asp:ListItem>Executive</asp:ListItem>
                     <asp:ListItem>Consul</asp:ListItem>
                     <asp:ListItem>Virtuoso</asp:ListItem>
                     <asp:ListItem>Adventurer</asp:ListItem>
                     <asp:ListItem>Entrepreneur</asp:ListItem>
                     <asp:ListItem>Entertainer</asp:ListItem>
                 </asp:DropDownList>
             </div>
     </div>
    <div class="form-group">
         <div class="col-md-offset-2 col-md-10">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="I have read and agree to the Dormmatch Terms of Service and Privacy Agreement" />    
         </div>
    </div>
    <div class="form-group">
        <div class="col-md-offset-2 col-md-10">
        <a runat="server" href="https://www.google.com" target="_blank" >Dormmatch Terms of Service and Privacy Agreement</a>
    </div>
    <div class="form-group">
         <div class="col-md-offset-2 col-md-10">
                <asp:Button ID="Button1" runat="server" Text="Submit" />
         </div>
    </div>
     
</div>

</asp:Content>