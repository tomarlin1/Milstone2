<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCoupon.aspx.cs" Inherits="PL.Manager.AddCoupon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style24 {
            height: 24px;
        }
        .auto-style25 {
            width: 104px;
        }
        .auto-style26 {
            width: 142px;
        }
        .auto-style28 {
            width: 148px;
            height: 24px;
        }
        .auto-style29 {
            width: 148px;
            height: 44px;
        }
        .auto-style30 {
            height: 44px;
        }
        .auto-style31 {
            width: 262px;
            height: 44px;
        }
        .auto-style32 {
            width: 262px;
            height: 24px;
        }
        .auto-style33 {
            width: 148px;
        }
        .auto-style34 {
            width: 104px;
            height: 24px;
        }
        .auto-style35 {
            width: 142px;
            height: 24px;
        }
        .auto-style36 {
            width: 104px;
            height: 26px;
        }
        .auto-style37 {
            height: 26px;
        }
        .auto-style39 {
            width: 262px;
        }
        .auto-style41 {
            width: 104px;
            height: 29px;
        }
        .auto-style42 {
            width: 142px;
            height: 29px;
        }
        .auto-style43 {
            width: 262px;
            height: 29px;
        }
        .auto-style44 {
            height: 29px;
        }
        .auto-style45 {
            width: 285px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style26" colspan="2">&nbsp;</td>
                <td colspan="4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25" rowspan="2">
                    <asp:Label ID="Label1" runat="server" style="font-size: xx-large" Text="Hello" Width="140px"></asp:Label>
                </td>
                <td class="auto-style26" colspan="2" rowspan="2">
                <asp:Label ID="getUserName_lbl" runat="server" style="font-size: xx-large"></asp:Label>
                </td>
                <td colspan="4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24" colspan="4"></td>
                <td class="auto-style24"></td>
                <td class="auto-style24"></td>
                <td class="auto-style24"></td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style26" colspan="2">&nbsp;</td>
                <td colspan="4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25" rowspan="2">
                    <asp:TreeView ID="TreeView2" runat="server">
                        <Nodes>
                            <asp:TreeNode Text="Coupon" Value="Coupon">
                                <asp:TreeNode NavigateUrl="~/Manager/AddCoupon.aspx" Text="Add" Value="Add"></asp:TreeNode>
                                <asp:TreeNode Text="Delete" Value="Delete"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Text="Log Out" Value="Log Out"></asp:TreeNode>
                        </Nodes>
                    </asp:TreeView>
                </td>
                <td class="auto-style29"></td>
                <td class="auto-style31">
                    <asp:Label ID="Label2" runat="server" Text="Add Coupon:"></asp:Label>
                </td>
                <td class="auto-style30" colspan="4"></td>
                <td class="auto-style30"></td>
                <td class="auto-style30"></td>
                <td class="auto-style30"></td>
                <td class="auto-style30"></td>
            </tr>
            <tr>
                <td class="auto-style28"></td>
                <td class="auto-style32">
                    <asp:Label ID="Label3" runat="server" Text="Please enter coupon details:" Width="250px"></asp:Label>
                </td>
                <td class="auto-style24" colspan="4">&nbsp;</td>
                <td class="auto-style24"></td>
                <td class="auto-style24"></td>
                <td class="auto-style24"></td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style39">
                    <asp:Label ID="Label4" runat="server" Text="enter coupon name:" Width="250px"></asp:Label>
                </td>
                <td colspan="4">
                    <asp:TextBox ID="getCouponName_tb" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style34"></td>
                <td class="auto-style35"></td>
                <td class="auto-style32">
                    <asp:Label ID="Label5" runat="server" Text="enter coupon id" Width="250px"></asp:Label>
                </td>
                <td class="auto-style24" colspan="4">
                    <asp:TextBox ID="getCouponId_tb" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style24"></td>
                <td class="auto-style24"></td>
                <td class="auto-style24"></td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td class="auto-style41"></td>
                <td class="auto-style42"></td>
                <td class="auto-style43">
                    <asp:Label ID="Label6" runat="server" Text="enter coupon price:" Width="250px"></asp:Label>
                </td>
                <td class="auto-style44" colspan="4">
                    <asp:TextBox ID="getCouponPrice_tb" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style44"></td>
                <td class="auto-style44"></td>
                <td class="auto-style44"></td>
                <td class="auto-style44"></td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style39">&nbsp;</td>
                <td colspan="2">
                    <asp:Label ID="Label9" runat="server" Text="Day:" Width="90px"></asp:Label>
                    <asp:Label ID="Label10" runat="server" Height="18px" Text="  Month:" Width="90px"></asp:Label>
                    <asp:Label ID="Label11" runat="server" Text="Year:" Width="90px"></asp:Label>
                </td>
                <td colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style39">
                    <asp:Label ID="Label7" runat="server" Text="enter coupon expired date:" Width="250px"></asp:Label>
                </td>
                <td class="auto-style45">
                    <asp:DropDownList ID="getDay_ddl" runat="server" Width="90px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="getMonth_ddl" runat="server" Width="90px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="getYear_ddl" runat="server" Width="90px">
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2019</asp:ListItem>
                        <asp:ListItem>2020</asp:ListItem>
                        <asp:ListItem>2021</asp:ListItem>
                        <asp:ListItem>2022</asp:ListItem>
                        <asp:ListItem>2023</asp:ListItem>
                        <asp:ListItem>2024</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style39">
                    <asp:Label ID="Label8" runat="server" Text="enter coupon business id:" Width="250px"></asp:Label>
                </td>
                <td colspan="4">
                    <asp:TextBox ID="getCouponBusinessId_TB" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style36"></td>
                <td class="auto-style37"></td>
                <td class="auto-style37" colspan="3">
                    <asp:Button ID="addCoupon_btn" runat="server" OnClick="addCoupon_btn_Click" style="text-align: center" Text="Add Coupon" Width="134px" />
                </td>
                <td class="auto-style37" colspan="2"></td>
                <td class="auto-style37"></td>
                <td class="auto-style37"></td>
                <td class="auto-style37"></td>
                <td class="auto-style37"></td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style39">
                    <asp:Label ID="error_lbl" runat="server" Width="150px"></asp:Label>
                </td>
                <td colspan="2">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style26" colspan="2">&nbsp;</td>
                <td colspan="4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style26" colspan="2">&nbsp;</td>
                <td colspan="4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
