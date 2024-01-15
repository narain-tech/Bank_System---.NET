<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BalanceList.aspx.cs" Inherits="List_BalanceList" %>

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
        }
        .style3
        {
            width: 505px;
        }
        .style4
        {
            background-color: #33CCFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#3399FF" 
                    NavigateUrl="~/AdminHomePage.aspx" style="text-align: right">Back</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    <marquee style="font-weight: 700; font-size: x-large; margin-bottom: 0px; background-color: #0099FF">Welcome To Admin Page</marquee>
     <table class="style1">
        <tr>
            <td class="style2">
                <table class="style1">
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2" colspan="2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                                class="style4"><strong>
        Balance List Of Account Holder&#39;s</strong></span></td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
    </div>
    <asp:GridView ID="balancedetails" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
    <Columns>
    <asp:BoundField DataField="holdername" HeaderText="Account Holder Name" 
            SortExpression="holdername" />
    <asp:BoundField DataField="number" HeaderText="Account Number" SortExpression="number" />
    <asp:BoundField DataField="type" HeaderText="Account Type" SortExpression="type" />
    <asp:BoundField DataField="deposit" HeaderText="Deposit" SortExpression="deposit" />
    <asp:BoundField DataField="balance" HeaderText="Balance" SortExpression="balance" />
    <asp:BoundField DataField="currentbalancce" HeaderText="Current Balancce" 
            SortExpression="currentbalancce" />
    </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:BANK SYSTEMConnectionString %>" 
        SelectCommand="SELECT * FROM [balancedetails]"></asp:SqlDataSource>
    </form>
</body>
</html>
