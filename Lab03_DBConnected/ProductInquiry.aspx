<%@ Page Title="" Language="C#" MasterPageFile="~/ProductsTemplate.Master" AutoEventWireup="true" CodeBehind="ProductInquiry.aspx.cs" Inherits="Lab03_DBConnected.ProductInquiry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 523px;
        }
        .auto-style6 {
            width: 523px;
            height: 50px;
        }
        .auto-style7 {
            height: 50px;
        }
    .auto-style8 {
        width: 523px;
        height: 70px;
    }
    .auto-style9 {
        height: 70px;
    }
    .auto-style11 {
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        font-size: small;
        font-weight: bold;
    }
    .auto-style12 {
        font-family: "Bahnschrift Light";
        font-size: medium;
        color: #33CC33;
    }
    .auto-style13 {
        width: 523px;
        font-weight: bold;
            height: 65px;
        }
    .auto-style14 {
        width: 523px;
        font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
        font-size: medium;
    }
    .auto-style15 {
        font-size: small;
    }
    .auto-style16 {
        font-size: small;
        color: #FF0000;
    }
        .auto-style17 {
            height: 65px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style14">Product ID</td>
            <td>
                <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            &nbsp;
                <asp:Button ID="btnLoad" runat="server" OnClick="btnLoad_Click" Text="Load" CssClass="auto-style11" />
                <asp:Label ID="lblErrorID" runat="server" CssClass="auto-style16"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Product Name</td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Product Price</td>
            <td>
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="compareValPrice" runat="server" ControlToValidate="txtPrice" CssClass="auto-style15" Display="Dynamic" ErrorMessage="Price must be a valid number" ForeColor="Red" Operator="DataTypeCheck" SetFocusOnError="True" Type="Double"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Product Quantity</td>
            <td>
                <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="rangeValQty" runat="server" ControlToValidate="txtQuantity" CssClass="auto-style15" Display="Dynamic" ErrorMessage="Quantity must be between 0 - 25" ForeColor="Red" MaximumValue="25" MinimumValue="0" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style9">
                <asp:Button ID="btnInsert" runat="server" Text="Insert" CssClass="auto-style11" OnClick="btnInsert_Click" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="auto-style11" OnClick="btnUpdate_Click" />
&nbsp;&nbsp;
                <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="auto-style11" OnClick="btnDelete_Click" />
            &nbsp;&nbsp;
                <asp:Button ID="btnClear" runat="server" CssClass="auto-style11" OnClick="btnClear_Click" Text="Clear" />
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="lblMessage" runat="server" CssClass="auto-style12"></asp:Label>
            </td>
            <td class="auto-style17"></td>
        </tr>
    </table>
</asp:Content>
