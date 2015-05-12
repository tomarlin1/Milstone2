<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCoupon.aspx.cs" Inherits="PL.Methods.AddOperation.AddCoupon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 117%;
            height: 705px;
        }
        .auto-style25 {
            width: 64px;
        }
        .auto-style26 {
            width: 142px;
        }
        .auto-style31 {
            width: 262px;
            height: 44px;
            text-align: right;
        }
        .auto-style32 {
            width: 262px;
            height: 24px;
            text-align: right;
        }
        .auto-style24 {
            height: 24px;
        }
        .auto-style39 {
            width: 262px;
        }
        .auto-style43 {
            width: 262px;
            height: 29px;
            text-align: right;
        }
        .auto-style44 {
            height: 29px;
        }
        .auto-style45 {
            text-align: left;
        }
        .auto-style37 {
            height: 26px;
            text-align: right;
        }
        .auto-style46 {
            height: 24px;
            width: 247px;
        }
        .auto-style47 {
            width: 247px;
        }
        .auto-style49 {
            height: 26px;
            width: 247px;
        }
        .auto-style54 {
            width: 262px;
            text-align: right;
        }
        .auto-style55 {
            height: 26px;
            width: 253px;
        }
        .auto-style56 {
            width: 253px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.8em" PathSeparator=" : ">
            <CurrentNodeStyle ForeColor="#333333" />
            <NodeStyle Font-Bold="True" ForeColor="#990000" />
            <PathSeparatorStyle Font-Bold="True" ForeColor="#990000" />
            <RootNodeStyle Font-Bold="True" ForeColor="#FF8000" />
        </asp:SiteMapPath>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style25" rowspan="13">
                    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
                    <asp:TreeView ID="TreeView2" runat="server" DataSourceID="SiteMapDataSource1" ImageSet="Arrows">
                        <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                        <Nodes>
                            <asp:TreeNode Text="Coupon" Value="Coupon">
                                <asp:TreeNode NavigateUrl="~/Manager/AddCoupon.aspx" Text="Add" Value="Add"></asp:TreeNode>
                                <asp:TreeNode Text="Delete" Value="Delete"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Text="Log Out" Value="Log Out"></asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                        <ParentNodeStyle Font-Bold="False" />
                        <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
                    </asp:TreeView>
                </td>
                <td class="auto-style26" colspan="2">&nbsp;</td>
                <td colspan="6" rowspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">
                    <asp:Label ID="Label2" runat="server" Text="Add Coupon:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style32">
                    <asp:Label ID="Label3" runat="server" Text="Please enter coupon details:" Width="250px"></asp:Label>
                </td>
                <td class="auto-style24" colspan="2">&nbsp;</td>
                <td class="auto-style46"></td>
                <td class="auto-style24"></td>
                <td class="auto-style24"></td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td class="auto-style54">
                    <asp:Label ID="Label4" runat="server" Text="enter coupon name:" Width="250px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="txtBoxCouponName" runat="server" Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Coupon name is required." ForeColor="#FF3300" ControlToValidate="txtBoxCouponName"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style43">
                    <asp:Label ID="Label6" runat="server" Text="enter coupon price:" Width="250px"></asp:Label>
                </td>
                <td class="auto-style44" colspan="3">
                    <asp:TextBox ID="txtBoxCouponPrice" runat="server" Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Coupon price is required." ForeColor="#FF3300" ControlToValidate="txtBoxCouponPrice"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style44"></td>
                <td class="auto-style44"></td>
                <td class="auto-style44"></td>
            </tr>
            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td colspan="2">
                    <asp:Label ID="Label9" runat="server" Text="Day:" Width="90px"></asp:Label>
                    <asp:Label ID="Label10" runat="server" Height="18px" Text="  Month:" Width="90px"></asp:Label>
                    <asp:Label ID="Label11" runat="server" Text="Year:" Width="90px"></asp:Label>
                </td>
                <td class="auto-style47">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style54">
                    <asp:Label ID="Label7" runat="server" Text="enter coupon expired date:" Width="250px"></asp:Label>
                </td>
                <td class="auto-style45" colspan="3">
                    <asp:DropDownList ID="ddl_day" runat="server" Width="90px">
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
                    <asp:DropDownList ID="ddl_month" runat="server" Width="90px">
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
                    <asp:DropDownList ID="ddl_year" runat="server" Width="90px">
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Coupon expired date is required." ForeColor="#FF3300" ControlToValidate="ddl_day"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style54">
                    <asp:Label ID="Label8" runat="server" Text="enter coupon business id:" Width="250px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="txtBoxBusinessID" runat="server" Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Coupon business is required." ForeColor="#FF3300" ControlToValidate="txtBoxBusinessID"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style37" colspan="2">
                    <asp:Button ID="btnAdd" runat="server" OnClick="addCoupon_btn_Click" style="text-align: right" Text="Add Coupon" Width="134px" ToolTip="press to add new coupon" />
                </td>
                <td class="auto-style55"></td>
                <td class="auto-style49"></td>
                <td class="auto-style37"></td>
                <td class="auto-style37"></td>
                <td class="auto-style37"></td>
            </tr>
            <tr>
                <td class="auto-style39">
                    <asp:Label ID="error_lbl" runat="server" Width="150px"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style47">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26" colspan="2">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
                <td class="auto-style47">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26" colspan="2">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
                <td class="auto-style47">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
