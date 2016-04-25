<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DNP.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="User name"></asp:Label>
        <p>
            <asp:TextBox ID="usernameBox" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <p>
            <asp:TextBox ID="passwordBox" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/register.aspx">Register</asp:HyperLink>
    </form>
</body>
</html>
