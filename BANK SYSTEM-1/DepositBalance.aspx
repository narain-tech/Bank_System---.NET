<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DepositBalance.aspx.cs" Inherits="ATM_and_Deposit_DepositBalance" %>

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
                 <strong><span class="style3">Deposit Balance</span></strong></td>
         </tr>
     </table>
     <asp:Panel ID="Panel1" runat="server" Height="255px">
         <table class="style1">
             <tr>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="style4">
                     Account Holder Name:</td>
                 <td>
                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td>
                     <asp:Button ID="DisplayButton" runat="server" Height="20px" 
                         onclick="DisplayButton_Click" Text="Display" />
                     <table class="style1">
                         <tr>
                             <td>
                                 Holder Name:</td>
                             <td>
                                 Account Number:</td>
                             <td>
                                 Account Type:</td>
                             <td>
                                 Deposit Amount:</td>
                         </tr>
                         <tr>
                             <td>
                                 <asp:Label ID="Label1" runat="server"></asp:Label>
                             </td>
                             <td>
                                 <asp:Label ID="Label2" runat="server"></asp:Label>
                             </td>
                             <td>
                                 <asp:Label ID="Label3" runat="server"></asp:Label>
                             </td>
                             <td>
                                 <asp:Label ID="Label4" runat="server"></asp:Label>
                             </td>
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
                                 &nbsp;</td>
                             <td>
                                 &nbsp;</td>
                             <td>
                                 &nbsp;</td>
                         </tr>
                     </table>
                 </td>
             </tr>
         </table>
     </asp:Panel>
    </form>
</body>
</html>
