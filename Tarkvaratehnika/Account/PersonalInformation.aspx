<%@ Page Title="Personal Information" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="PersonalInformation.aspx.cs" Inherits="Tarkvaratehnika.Account.PersonalInformation" %>
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
        <h5>Step 1: Personal Information</h5>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
       <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Name" CssClass="col-md-2 control-label">Full Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Name" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="BirthDate" CssClass="col-md-2 control-label" Text="Birth Date"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="BirthDate" CssClass="form-control" TextMode="Date"/>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Citizenship" CssClass="col-md-2 control-label" Text="Country of Citizenship"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Citizenship" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="City" CssClass="col-md-2 control-label" Text="City of Origin"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="City" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Gender" runat="server" AssociatedControlID="Gender" CssClass="col-md-2 control-label">Gender</asp:Label>

            <asp:RadioButtonList ID="RadioButtonList1" runat="server"> 
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button ID="Button1" runat="server" Text="Next" OnClick="Next_Form" />
            </div>
        </div>


    </div>
</asp:Content>
