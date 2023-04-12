<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormControlParentDemo.aspx.cs" Inherits="WebAppFormsDemo.FormControlParentDemo" %>
<%@ Register TagPrefix="uc" TagName="FormControlDemo" Src="~/FormControlDemo.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>This is child control</h1>
            <uc:FormControlDemo ID="fcDemoForm" runat="server"></uc:FormControlDemo>
            <br />
            <asp:Button ID="ButtonShowName" runat="server" Text="Show Name" OnClick="ButtonShowName_Click" />
            <br />
            <asp:Label ID="LabelFullName" runat="server" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>
