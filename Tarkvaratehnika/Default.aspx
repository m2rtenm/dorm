<%@ Page Title="DormMatch" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Tarkvaratehnika._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
            <div class="jumbotron text-center">
                <div class="container-fluid">
                        <div class="navbar">
                                <a runat="server" href="~/" class="brand">DormMatch</a>
                        </div>
                        <div class="container">
                            <div class="row"> </div>
                          <div class="row">
                            <div class="col-md-4">
                              <h2>Find your perfect roommate</h2>
                            </div>
                            <div class="col-md-4">
                            </div>
                            <div class="col-md-4">
                                    <a runat="server" href="~/Account/Register" class="btn btn-primary btn-large ">Find Roommate</a>
                             </div>
                          </div>
                </div>
            </div> 
        </div>
    </div>
</asp:Content>
