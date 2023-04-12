<%@ Page Trace="true" Language="C#" AutoEventWireup="true" CodeBehind="Pokemons.aspx.cs" Inherits="WebAppFormsDemo.Pokemons" Async="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%: Title %></title>
    <link rel="stylesheet" href="Styles/AppGlobal.css">
</head>
<body>
    <h1><%: Title %></h1>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <th>Name</th>
                    <th>Url</th>
                </tr>

                <% foreach (WebAppFormsDemo.DTOs.Result pokemon in pokemonResponse.results)
                    {  %>
                <tr>
                    <td><%= pokemon.name %></td>
                    <td><%= pokemon.url %></td>
                </tr>
                <% } %>
            </table>

            <asp:TextBox ID="TextBoxPokemon" runat="server" OnTextChanged="TextBoxPokemon_TextChanged"></asp:TextBox>
            <asp:Button ID="ButtonTest" runat="server" Text="Button Test" OnClick="ButtonTest_Click" />
            <asp:Label ID="LabelPokemon" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
