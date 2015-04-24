<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="PL.RegisterPage" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 117%;
            height: 253px;
        }
        .auto-style4 {
            width: 446px;
            text-align: right;
        }
        .auto-style5 {
            width: 219px;
        }
        .auto-style8 {
            width: 219px;
            height: 49px;
        }
        .auto-style9 {
            height: 49px;
            width: 448px;
        }
        .auto-style10 {
            width: 448px;
        }
        .auto-style11 {
            width: 446px;
            text-align: right;
            height: 45px;
        }
        .auto-style12 {
            width: 219px;
            height: 45px;
        }
        .auto-style13 {
            width: 448px;
            height: 45px;
        }
        .auto-style14 {
            width: 446px;
        }
        .auto-style15 {
            height: 49px;
            width: 446px;
        }
        .auto-style19 {
            width: 446px;
            text-align: right;
            height: 44px;
        }
        .auto-style20 {
            width: 219px;
            height: 44px;
        }
        .auto-style21 {
            width: 448px;
            height: 44px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style5">Register:</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">UserName:</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TbUserName" runat="server" Width="214px" Height="28px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="UserNameVali" runat="server" ControlToValidate="TbUserName" ErrorMessage="User Name is Required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Name:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TbName" runat="server" Height="28px" Width="214px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="NameVali" runat="server" ControlToValidate="TbName" ErrorMessage="Name is Required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Password:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TbPassword" runat="server" TextMode="Password" Width="214px" Height="28px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="PasswordVali" runat="server" ControlToValidate="TbPassword" ErrorMessage="Password is Required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Confirm Password:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TbRepeatPass" runat="server" Height="28px" style="text-align: justify" TextMode="Password" Width="214px"></asp:TextBox>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="ConfirmPasswordVali" runat="server" ControlToValidate="TbRepeatPass" ErrorMessage="Confirm Password is Required." ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TbPassword" ControlToValidate="TbRepeatPass" ErrorMessage="Both Passwords must be same." ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style8">
                    <asp:Button ID="Submit" runat="server" Height="35px" OnClick="Button1_Click" Text="Submit" Width="90px" />
                    <asp:Button ID="Reset" runat="server" Height="35px" OnClick="Reset_Click" Text="Reset" Width="90px" />
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
    </form>

</body>

</html>
