<%@ Page Title="Personal Information" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonalInformation.aspx.cs" Inherits="Tarkvaratehnika.Account.PersonalInformation" %>
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
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="FirstName" CssClass="col-md-2 control-label">First Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="FirstName" CssClass="form-control" /><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="FirstName" ErrorMessage="Please fill in all the fields!"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="LastName" CssClass="col-md-2 control-label">Last Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="LastName" CssClass="form-control" /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="LastName" ErrorMessage="Please fill in all the fields!"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="BirthDate" CssClass="col-md-2 control-label" Text="Birth Date"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="BirthDate" CssClass="form-control" TextMode="Date"/><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="BirthDate" ErrorMessage="Please fill in all the fields!"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Citizenship" CssClass="col-md-2 control-label" Text="Country of Citizenship"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Citizenship" CssClass="form-control" /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Citizenship" ErrorMessage="Please fill in all the fields!"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="City" CssClass="col-md-2 control-label" Text="City of Origin"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="City" CssClass="form-control" /><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="City" ErrorMessage="Please fill in all the fields!"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Gender" runat="server" AssociatedControlID="Gender" CssClass="col-md-2 control-label">Gender</asp:Label>

            <asp:RadioButtonList ID="GenderList" runat="server"> 
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button ID="Next" runat="server" Text="Next" OnClick="Next_Form"/>
            </div>
        </div>


    </div>
</asp:Content>
