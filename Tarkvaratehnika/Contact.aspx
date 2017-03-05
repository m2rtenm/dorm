<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Tarkvaratehnika.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>Team</h3>
    <address>
        Ehitajate tee 5<br />
        Tallinn, Estonia<br />
        <abbr title="Phone">Phone:</abbr>
        +372 6203 103</address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@dormmatch.com">Support@dormmatch.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@dormmatch.com">Marketing@dormmatch.com</a>
    </address>
</asp:Content>
