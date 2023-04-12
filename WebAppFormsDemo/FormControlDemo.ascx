<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FormControlDemo.ascx.cs" Inherits="WebAppFormsDemo.FormControlDemo" %>

    <label for="fname">First name:</label><br>
    <asp:TextBox ID="TextBoxFName" runat="server" OnTextChanged="TextBoxFName_TextChanged"></asp:TextBox>
    <label for="lname">
        <br />
        Last name:</label><br>
    <asp:TextBox ID="TextBoxLName" runat="server" OnTextChanged="TextBoxLName_TextChanged"></asp:TextBox>
