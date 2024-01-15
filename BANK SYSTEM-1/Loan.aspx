<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Loan.aspx.cs" Inherits="Loan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            text-align: center;
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
            <div>
    
        <table class="style1">
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" colspan="5">
                    <strong>LOAN</strong></td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    Name:</td>
                <td class="style6">
                    <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    Type of Loan:</td>
                <td>
                    <asp:DropDownList ID="TypeofLoanDropDownList" runat="server">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                        <asp:ListItem>Home Loan</asp:ListItem>
                        <asp:ListItem>Education Loan</asp:ListItem>
                        <asp:ListItem>Car Loan</asp:ListItem>
                        <asp:ListItem>Two Wheeler Loan</asp:ListItem>
                        <asp:ListItem>Business Loan</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    Phone No:</td>
                <td class="style6">
                    <asp:TextBox ID="PhonenoTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    Salary Range:</td>
                <td>
                    <asp:DropDownList ID="SalaryRangeDropDownList" runat="server">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                        <asp:ListItem>10k-20k</asp:ListItem>
                        <asp:ListItem>20k-30k</asp:ListItem>
                        <asp:ListItem>30k-40k</asp:ListItem>
                        <asp:ListItem>40k-50k</asp:ListItem>
                        <asp:ListItem>50k Above</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:Image ID="Image1" runat="server" Height="129px" 
                        ImageUrl="~/Image/Loan.png" Width="210px" />
                </td>
                <td class="style3">
                    State:</td>
                <td class="style6">
                    <asp:DropDownList ID="StateDropDownList" runat="server">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                        <asp:ListItem>Tamil Nadu</asp:ListItem>
                        <asp:ListItem>Kerala</asp:ListItem>
                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
                        <asp:ListItem>Maharashtra</asp:ListItem>
                        <asp:ListItem>Bihar</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    Have You Identified Property:</td>
                <td>
                    <asp:DropDownList ID="HaveyouidentifiedpropertyDropDownList" runat="server">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    City:</td>
                <td class="style6">
                    <asp:DropDownList ID="CityDropDownList" runat="server">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                        <asp:ListItem>Trichy</asp:ListItem>
                        <asp:ListItem>Chennai</asp:ListItem>
                        <asp:ListItem>Dindugal</asp:ListItem>
                        <asp:ListItem>Salem</asp:ListItem>
                        <asp:ListItem>Tanjore</asp:ListItem>
                        <asp:ListItem>Vilupuram</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    Email ID:</td>
                <td>
                    <asp:TextBox ID="EmailidTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    Employement Type:</td>
                <td class="style6">
                    <asp:DropDownList ID="EmployementypeownList" runat="server">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                        <asp:ListItem>Salaried</asp:ListItem>
                        <asp:ListItem>Self Employed</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style5">
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" 
                        onclick="SubmitButton_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
