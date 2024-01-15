<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="Edit_User" %>

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
            text-align: center;
        }
        .style3
        {
            background-color: #33CCFF;
        }
        .style4
        {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
 <marquee style="font-weight: 700; font-size: x-large; margin-bottom: 0px; background-color: #0099FF">Welcome To Admin Page</marquee>    
    </div>
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <strong><span class="style3">Edit User Login</span></strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="137px">
        <table class="style1">
            <tr>
                <td class="style4">
                    User ID:</td>
                <td>
                    <asp:TextBox ID="UserIDTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="SearchButton" runat="server" Height="20px" 
                        onclick="SearchButton_Click" Text="Search" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    Password:</td>
                <td>
                    <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="UpdateButton" runat="server" Height="20px" 
                        onclick="UpdateButton_Click" Text="Update" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    </form>
</body>
</html>
