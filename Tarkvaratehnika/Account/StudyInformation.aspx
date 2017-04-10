<%@ Page Title="Study Information" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudyInformation.aspx.cs" Inherits="Tarkvaratehnika.Account.StudyInformation" %>
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
        <h5>Step 2: Information about your studies</h5>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="University" CssClass="col-md-2 control-label" Text="University"></asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="University" runat="server">
                    <asp:ListItem>Tallinn University of Technology</asp:ListItem>
                    <asp:ListItem>University of Tartu</asp:ListItem>
                </asp:DropDownList>
            </div>
     </div>
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Degree" CssClass="col-md-2 control-label" Text="Degree"></asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="Degree" runat="server">
                    <asp:ListItem>Bachelor's Degree</asp:ListItem>
                    <asp:ListItem>Master's Degree</asp:ListItem>
                    <asp:ListItem>PhD</asp:ListItem>
                    <asp:ListItem>Graduate Degree</asp:ListItem>
                </asp:DropDownList>
            </div>
     </div> 
     <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="UniYear" CssClass="col-md-2 control-label" Text="University Year of Admission"></asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="UniYear" runat="server">
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                </asp:DropDownList>
            </div>
     </div>
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="StudyField" CssClass="col-md-2 control-label" Text="Field of Study"></asp:Label>
            <div class="col-md-10">
                 <asp:TextBox runat="server" ID="StudyField" CssClass="form-control" />
            </div>
     </div> 
    <div class="form-group">
         <div class="col-md-offset-2 col-md-10">
                <asp:Button ID="Button1" runat="server" Text="Next" OnClick="Button1_Click" />
         </div>
    </div>
</div>

</asp:Content>
