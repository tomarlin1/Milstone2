<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="CustomerHomeP.aspx.cs" Inherits="PL.Customer.CustomerHomeP" %>
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
        .auto-style22 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
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
            <td class="auto-style11" colspan="4" rowspan="2">&nbsp; <span class="auto-style22">Welcome Back! </span>
                <asp:Label ID="getUserName_lbl" runat="server" CssClass="auto-style22"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.8em" PathSeparator=" : ">
                    <CurrentNodeStyle ForeColor="#333333" />
                    <NodeStyle Font-Bold="True" ForeColor="#990000" />
                    <PathSeparatorStyle Font-Bold="True" ForeColor="#990000" />
                    <RootNodeStyle Font-Bold="True" ForeColor="#FF8000" />
                </asp:SiteMapPath>
            </td>
            <td class="auto-style10"></td>
            <td class="auto-style13"></td>
            <td class="auto-style19"></td>
            <td class="auto-style5"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" ImageSet="Arrows">
                    <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                    <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                    <ParentNodeStyle Font-Bold="False" />
                    <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
                </asp:TreeView>
                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" StartingNodeUrl="~/Customer/CustomerHomeP.aspx" />
            </td>
            <td class="auto-style10"></td>
            <td class="auto-style13"></td>
            <td class="auto-style19"></td>
            <td class="auto-style5"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style11" colspan="1">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="searchCoupon_btn" runat="server" Height="35px" style="margin-left: 0px" Text="Search Coupon" Width="150px" />
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
                <asp:Button ID="historyCoupon_btn" runat="server" Height="35px" Text="Coupon History" Width="150px" />
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
                <asp:Button ID="friendsReport_btn" runat="server" Height="35px" Text="Friend's Report" Width="150px" />
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
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
