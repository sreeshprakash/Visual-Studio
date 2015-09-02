﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bill.aspx.cs" Inherits="Try.BillForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="Label1" runat="server"><h1>TryIt Page</h1></asp:Label>
     <asp:label ID="Label2" runat="server"><b>Calculate Bill Amount</b></asp:label>
    <br />
    <asp:label ID="Label3" runat="server">This service takes the Doctor's prescription as input and calculates the total bill amount by checking price of medicines</asp:label>
    <br />
    <asp:label ID="Label4" runat="server"> URL for the Web Service : </asp:label>
        <pre style="border: 1px solid rgb(240, 240, 224); padding: 5px; margin-top: -5px; font-size: 1.2em; font-family: 'Courier New'; color: rgb(0, 0, 0); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(229, 229, 204);"><a href="http://webstrar40.fulton.asu.edu/Page8/Bill.svc?wsdl">http://webstrar40.fulton.asu.edu/Page8/Bill.svc?wsdl</a></pre>
    <br />
    <br />
    <table>
        <tr>
           <th>Operation Name:</th>
            <td>Calculate Medicine Bill</td>
        </tr>
        <tr>
            <th>Parameter List:</th>
            <td>Doctor's Prescription</td>
        </tr>
        <tr>
               <th>Output:</th>
               <td>Total bill amount</td>
        </tr>
    </table>
    <br />
    <br />
    <asp:Table runat="server">
    <asp:TableRow runat="server">
        <asp:TableHeaderCell runat="server">Enter the Doctor's Prescription:</asp:TableHeaderCell>
        <asp:TableCell runat="server"><asp:TextBox ID="tb1" runat="server"></asp:TextBox></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow runat="server">
        <asp:TableHeaderCell runat="server">The total bill amount is:</asp:TableHeaderCell>
        <asp:TableCell runat="server"><asp:TextBox runat="server" ID="tb2"></asp:TextBox></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow runat="server">
        <asp:TableCell runat="server"><asp:Button ID="Invoke" runat="server" Text="Invoke" OnClick="Invoke_Click" /></asp:TableCell>
    </asp:TableRow>
    </asp:Table>
    
    </div>
    </form>
</body>
</html>
