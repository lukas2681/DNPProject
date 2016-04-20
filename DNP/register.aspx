<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="DNP.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Full name"></asp:Label>
        <p>
            <asp:TextBox ID="fullnameRBox" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
        <p>
            <asp:TextBox ID="usernameRBox" runat="server" style="margin-bottom: 0px"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
        <p>
            <asp:TextBox ID="passwordRBox" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label4" runat="server" Text="Confirm password"></asp:Label>
        <p>
            <asp:TextBox ID="confirmPasswordRBox" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
        <p>
            <asp:TextBox ID="emailRBox" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
    </form>
</body>
</html>
