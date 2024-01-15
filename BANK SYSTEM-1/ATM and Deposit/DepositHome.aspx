<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DepositHome.aspx.cs" Inherits="ATM_and_Deposit_DepositHome" %>

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
            height: 23px;
            text-align: center;
        }
        .style3
        {
            background-color: #33CCFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MainPage.aspx">Home</asp:HyperLink>   
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
         <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:HyperLink ID="HyperLink3" runat="server" 
        NavigateUrl="~/BranchDetails.aspx">Branch</asp:HyperLink>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Loan.aspx">Loan</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
    <br />
    <div>
    <marquee style="font-weight: 700; background-color: #3399FF">WELCOME TO BISHOP BANK</marquee></div>
    </div>
    <table class="style1">
        <tr>
            <td class="style2">
                <strong><span class="style3">Deposit Amount</span></strong></td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Holder Name:</td>
            <td>
                <asp:TextBox ID="HolderNameTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Account Number:</td>
            <td>
                <asp:TextBox ID="AccountNumberTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Account Type:</td>
            <td>
                <asp:DropDownList ID="AccountTypeDropDownList" runat="server">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                    <asp:ListItem>SAVING</asp:ListItem>
                    <asp:ListItem>CURRENT</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Deposit Amount:</td>
            <td>
                <asp:TextBox ID="DepositAmountTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="SubmitButton" runat="server" Height="20px" 
                    onclick="SubmitButton_Click" Text="Submit" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
