<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHomePage.aspx.cs" Inherits="AdminHomePage" %>

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
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    <marquee style="font-weight: 700; font-size: x-large; margin-bottom: 0px; background-color: #0099FF">Welcome To Admin Home Page</marquee>
    </div>
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#3399FF" 
                    NavigateUrl="~/MainPage.aspx" style="text-align: right">Logout</asp:HyperLink>
            </td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server" Height="698px">
        <asp:ImageButton ID="ImageButton1" runat="server" 
    ImageUrl="~/Icon/Balance.png" Height="100px" Width="100px" 
            PostBackUrl="~/List/BalanceList.aspx" />
        <br />
        Balance List Of Account Holder&#39;s<br />
        <br />
        <br />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="100px" 
            ImageUrl="~/Icon/Deposit.png" Width="100px" 
            PostBackUrl="~/List/DepositList.aspx" />
        <br />
        <br />
        Deposit List Of&nbsp; Account&nbsp; Holder&#39;s<br />
        <br />
        <br />
        <asp:ImageButton ID="ImageButton4" runat="server" Height="100px" 
            ImageUrl="~/Icon/Edit.png" PostBackUrl="~/Edit/Edit.aspx" />
        <br />
        <br />
        Edit User Details &amp; Account Holder Details<br />
        <br />
        <br />
        <asp:ImageButton ID="ImageButton3" runat="server" Height="100px" 
            ImageUrl="~/Icon/Withdrawal.png" Width="100px" 
            PostBackUrl="~/List/WithdrawalList.aspx" />
        <br />
        <br />
        Withdrawal List Of&nbsp; Account&nbsp; Holder&#39;s</asp:Panel>
    </form>
</body>
</html>
