<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterATM.aspx.cs" Inherits="ATM_and_Deposit_RegisterATM" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

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
            width: 187px;
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
            <td class="style2" colspan="2" style="background-color: #33CCFF">
                <strong>Register ATM Card </strong>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Account Holder Name:</td>
            <td>
                <asp:TextBox ID="AccountHolderNameTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Account Number:</td>
            <td>
                <asp:TextBox ID="AccountNumberTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                DOB:</td>
            <td>
                <asp:TextBox ID="DOBTextBox" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="DOBTextBox_CalendarExtender" runat="server" 
                    TargetControlID="DOBTextBox">
                </asp:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Phone Number:</td>
            <td>
                <asp:TextBox ID="PhoneNumberTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Email ID:</td>
            <td>
                <asp:TextBox ID="EmailIDTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="SubmitButton" runat="server" Height="20px" 
                    onclick="SubmitButton_Click" Text="Submit" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
