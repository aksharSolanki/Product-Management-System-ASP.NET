<%@ Page Title="" Language="C#" MasterPageFile="~/ProductsTemplate.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Lab03_DBConnected.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        color: #FF5050;
        font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
        font-weight: bold;
        font-size: x-large;
        background-color: #FFFFFF;
    }
    .auto-style7 {
        font-family: "Calisto MT";
        font-size: large;
        font-weight: bold;
        color: #0066FF;
        background-color: #FFFFFF;
    }
    .auto-style8 {
        font-family: "Calisto MT";
        font-size: medium;
        color: #0066FF;
        background-color: #FFFFFF;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <p>
    <span class="auto-style5">Welcome to the Tesla Corp. </span></p>
<p>
    <br class="auto-style8" />
    <span class="auto-style8">You can </span><span class="auto-style7">browse</span><span class="auto-style8"> through the available selection of Tesla cars.</span><br class="auto-style8" />
    <span class="auto-style7">Add</span><span class="auto-style8"> your own to the list if you wish.</span><br class="auto-style8" />
    <span class="auto-style7">Update</span><span class="auto-style8"> the info about the existing Tesla cars.</span><br class="auto-style8" />
    <span class="auto-style8">You have the option to </span><span class="auto-style7">delete</span><span class="auto-style8"> a car you despise.</span></p>
</asp:Content>
