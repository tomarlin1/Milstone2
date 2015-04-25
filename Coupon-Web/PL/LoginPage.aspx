<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="PL.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            width: 543px;
            text-align: right;
        }
        .auto-style5 {
            width: 479px;
        }
        .auto-style6 {
            width: 543px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">Login:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">UserName:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TbUserName" runat="server" Width="222px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UserNameVali" runat="server" ControlToValidate="TbUserName" ErrorMessage="User Name is Required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Password:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TbPassword" runat="server" TextMode="Password" Width="222px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PasswordVali" runat="server" ControlToValidate="TbPassword" ErrorMessage="Password is Required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="Type" runat="server">
                        <asp:ListItem>Customer</asp:ListItem>
                        <asp:ListItem>BusinessManager</asp:ListItem>
                        <asp:ListItem>Administrator</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="ButtonLogin" runat="server" style="text-align: justify" Text="Login" Width="97px" OnClick="ButtonLogin_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="errorlbl" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>

</body>

</html>
