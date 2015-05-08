<%@ Page Title="" Language="C#" MasterPageFile="~/SystemManager/SystemMaster.Master" AutoEventWireup="true" CodeBehind="SystemManagerHomeP.aspx.cs" Inherits="PL.SystemManager.SystemManagerHomeP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 78%;
            height: 386px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
            width: 216px;
        }
        .auto-style6 {
            width: 216px;
        }
        .auto-style7 {
            height: 30px;
        }
        .auto-style9 {
            width: 216px;
            height: 30px;
        }
        .auto-style10 {
            height: 26px;
            width: 209px;
        }
        .auto-style11 {
            width: 209px;
        }
        .auto-style12 {
            height: 30px;
            width: 209px;
        }
        .auto-style13 {
            height: 26px;
            width: 104px;
        }
        .auto-style14 {
            width: 104px;
            font-size: xx-large;
            text-align: center;
        }
        .auto-style16 {
            height: 26px;
            width: 185px;
        }
        .auto-style17 {
            width: 185px;
        }
        .auto-style18 {
            width: 185px;
            height: 30px;
        }
        .auto-style19 {
            height: 26px;
            width: 135px;
        }
        .auto-style20 {
            width: 135px;
        }
        .auto-style21 {
            height: 30px;
            width: 135px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style10"></td>
            <td class="auto-style13"></td>
            <td class="auto-style19"></td>
            <td class="auto-style5"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style10"></td>
            <td class="auto-style13"></td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14" rowspan="2">&nbsp; Hello</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style12"></td>
            <td class="auto-style21">
                <asp:Label ID="getUserName_lbl" runat="server"></asp:Label>
            </td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style10"></td>
            <td class="auto-style13"></td>
            <td class="auto-style19"></td>
            <td class="auto-style5"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style10"></td>
            <td class="auto-style13"></td>
            <td class="auto-style19"></td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="couponReport_btn" runat="server" Height="35px" style="margin-left: 0px" Text="Coupon Report" Width="150px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="bussinessReport_btn" runat="server" Height="35px" Text="Bussiness Report" Width="150px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">
                <asp:Button ID="logOut_btn" runat="server" Height="35px" Text="Log Out" Width="150px" />
            </td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="userReport_btn" runat="server" Height="35px" Text="User Report" Width="150px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style13"></td>
            <td class="auto-style19"></td>
            <td class="auto-style5"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
