<%@ Page Title="" Language="C#" MasterPageFile="~/Manager/ManagerMaster.Master" AutoEventWireup="true" CodeBehind="ManagerHomeP.aspx.cs" Inherits="PL.Manager.ManagerHomeP" %>
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
            width: 185px;
        }
        .auto-style17 {
            width: 185px;
        }
        .auto-style20 {
            width: 77px;
        }
        .auto-style21 {
            height: 30px;
            width: 77px;
        }
        .auto-style22 {
            height: 26px;
            width: 77px;
        }
        .auto-style23 {
            width: 185px;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style10"></td>
            <td class="auto-style13"></td>
            <td class="auto-style22"></td>
            <td class="auto-style5"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style10"></td>
            <td class="auto-style13"></td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style23" rowspan="2">
                <asp:Label ID="Label1" runat="server" Text="Hello"></asp:Label>
            </td>
            <td class="auto-style11" rowspan="2">
                <asp:Label ID="getUserName_lbl" runat="server" style="font-size: xx-large"></asp:Label>
            </td>
            <td class="auto-style14" rowspan="2">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">
                &nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style10"></td>
            <td class="auto-style13"></td>
            <td class="auto-style22"></td>
            <td class="auto-style5"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style16" rowspan="3">
                <asp:TreeView ID="TreeView1" runat="server" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
                    <Nodes>
                        <asp:TreeNode Text="Coupon" Value="Coupon">
                            <asp:TreeNode NavigateUrl="~/Manager/AddCoupon.aspx" Text="Add" Value="Add"></asp:TreeNode>
                            <asp:TreeNode Text="Delete" Value="Delete"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Customer/SearchCouponDefault.aspx" Text="Search" Value="Search"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="Log Out" Value="Log Out"></asp:TreeNode>
                    </Nodes>
                </asp:TreeView>
            </td>
            <td class="auto-style10"></td>
            <td class="auto-style13"></td>
            <td class="auto-style22"></td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
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
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
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
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style13"></td>
            <td class="auto-style22"></td>
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

