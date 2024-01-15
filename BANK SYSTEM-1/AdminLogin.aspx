<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 209px;
        }
        .style3
        {
            width: 209px;
            text-align: right;
        }
    </style>
</head>
<body style="font-weight: 700; text-align: center; font-size: large">
    <form id="form1" runat="server">
    <div style="background-color: #0099FF">
    
        Admin Login</div>
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:ImageMap ID="ImageMap1" runat="server" Height="100px" 
                    ImageUrl="~/Icon/Admin.png">
                </asp:ImageMap>
            </td>
            <td style="text-align: left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                </td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Admin User ID:</td>
            <td style="text-align: left">
                <asp:TextBox ID="AdminUserIDTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Password:</td>
            <td style="text-align: left">
                <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                <asp:Label ID="ErrorMsgLabel" runat="server" 
                    style="font-size: small; color: #CC0000" Text="Incorrect Password"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td style="text-align: left">
                <asp:Button ID="LoginButton" runat="server" onclick="LoginButton_Click" 
                    Text="Login" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="20px" 
                    PostBackUrl="~/MainPage.aspx" Text="Back" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
