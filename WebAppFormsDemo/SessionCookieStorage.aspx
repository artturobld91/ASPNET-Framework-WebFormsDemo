<%@ Page Trace="true" Language="C#" AutoEventWireup="true" CodeBehind="SessionCookieStorage.aspx.cs" Inherits="WebAppFormsDemo.SessionCookieStorage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%= Title %></title>
    <link rel="stylesheet" href="Styles/AppGlobal.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>App Cookies Storage</h1>
            <table>
                <tr>
                    <th>Name</th>
                    <th>Value</th>
                </tr>

                <% foreach (string cookieKey in Response.Cookies.AllKeys)
                   {  %>
                <tr>
                    <td><%= cookieKey %></td>
                    <td><%= Response.Cookies[cookieKey].Value %></td>
                </tr>
                <% } %>
            </table>
            <asp:Button ID="ButtonStoreCookie" runat="server" Text="Add Cookie Item" OnClick="ButtonStoreCookie_Click" />

            <h1>App Session Storage</h1>
            <table>
                <tr>
                    <th>Name</th>
                    <th>Value</th>
                </tr>

                <tr>
                    <td> newSessionItem </td>
                    <td><%= Session["newSessionItem"] %></td>
                </tr>
            </table>
            <asp:Button ID="ButtonStoreSession" runat="server" Text="Add Session Item" OnClick="ButtonStoreSession_Click" />
        </div>
        <asp:Button ID="ButtonCleanStorage" runat="server" Text="Clear Storage" OnClick="ButtonCleanStorage_Click" />
    </form>
</body>
</html>
