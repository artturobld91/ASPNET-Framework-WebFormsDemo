<%@ Page Trace="true" Language="C#" AutoEventWireup="true" CodeBehind="LifecycleEvents.aspx.cs" Inherits="WebAppFormsDemo.LifecycleEvents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%: Title %></title>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1><%: Title %></h1>
            <asp:HyperLink ID="HyperLinkDocumentation" runat="server" NavigateUrl="https://learn.microsoft.com/en-us/previous-versions/aspnet/ms178472(v=vs.100)">MS Documentation</asp:HyperLink>
            
            <table>
                <tr>
                    <th>Stage</th>
                    <th>Description</th>
                </tr>
                <tr>
                    <td>Page Request</td>
                    <td>The page request occurs before the page life cycle begins. When the page is requested by a user, ASP.NET determines whether the page needs to be parsed and compiled (therefore beginning the life of a page), or whether a cached version of the page can be sent in response without running the page.</td>
                </tr>
                <tr>
                    <td>Start</td>
                    <td>In the start stage, page properties such as Request and Response are set. At this stage, the page also determines whether the request is a postback or a new request and sets the IsPostBack property. The page also sets the UICulture property.</td>
                </tr>
                <tr>
                    <td>Initialization</td>
                    <td>During page initialization, controls on the page are available and each control's UniqueID property is set. A master page and themes are also applied to the page if applicable. If the current request is a postback, the postback data has not yet been loaded and control property values have not been restored to the values from view state.</td>
                </tr>
                <tr>
                    <td>Load</td>
                    <td>During load, if the current request is a postback, control properties are loaded with information recovered from view state and control state.</td>
                </tr>
                <tr>
                    <td>Postback event handling</td>
                    <td>If the request is a postback, control event handlers are called. After that, the Validate method of all validator controls is called, which sets the IsValid property of individual validator controls and of the page. (There is an exception to this sequence: the handler for the event that caused validation is called after validation.)</td>
                </tr>
                <tr>
                    <td>Rendering</td>
                    <td>Before rendering, view state is saved for the page and all controls. During the rendering stage, the page calls the Render method for each control, providing a text writer that writes its output to the OutputStream object of the page's Response property.</td>
                </tr>
                <tr>
                    <td>Unload</td>
                    <td>The Unload event is raised after the page has been fully rendered, sent to the client, and is ready to be discarded. At this point, page properties such as Response and Request are unloaded and cleanup is performed.</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
