<%@ Page Title="DormMatch" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Tarkvaratehnika._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        a.btn.btn-primary.btn-large{
    padding: 18px 28px;
    font-size: 22px;
    color: white! important; 
}

.body-content{
    text-align:center;
    width:100%;
    height:100%;
    font-family: "Roboto";
    
}

div.jumbotron.text-center {
    padding: 60px !important; 
    background-color:transparent !important;
}
a.brand {
    content: url(Content/img/brand.png);
    max-width: 30%;
}

@font-face { 
    font-family: "Roboto"; 
    src: url('Content/Roboto-Regular.ttf'); 
} 

h1 {
    font-family: "Roboto";
}

label{
    float: left;
    color: white! important;
    font-family: "Roboto"! important;
}

h2{
    color: black! important;
    font-family: "Roboto"! important;
}
h3 {
    color:black! important;
    font-family: "Roboto"! important;
    text-align: center;
}
h4 {
    color:black! important;
    font-family: "Roboto"! important;
    text-align: center;
}
#regform{
    background: rgba(17,108,130,0.7);
}

.body-content {
     display: inline-block;
     
     font: 13px/18px "Helvetica Neue", Helvetica, Arial, sans-serif;
}

body {
     background: url(Content/img/Background.jpg) no-repeat;
     background-size: 100%;
     background-repeat:no-repeat;
}
    </style>
    <div class="container">
        <div class="jumbotron text-center">
            <div class="container-fluid">
                <div class="navbar">
                   <a runat="server" href="~/" class="brand">DormMatch</a>
                </div>
                <div class="container">
                   <div class="row">
                       <div class="col-md-4"></div>
                       <div class="col-md-4" align="center">
                         <h2>Find your perfect roommate</h2>
                      </div>
                   </div>
                   <div class="row">
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
