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
        .auto-style5 {
            width: 24%;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style6 {
            width: 21%;
            text-align: right;
        }
        .auto-style4 {
            width: 21%;
        }
        .auto-style7 {
            text-align: center;
            height: 34px;
        }
        .auto-style8 {
            width: 21%;
            height: 34px;
        }
        .auto-style9 {
            height: 34px;
        }
        .auto-style10 {
            width: 24%;
            height: 34px;
        }
        .auto-style11 {
            width: 21%;
            text-align: right;
            height: 47px;
        }
        .auto-style12 {
            height: 47px;
        }
        .auto-style13 {
            text-align: center;
            height: 44px;
        }
        .auto-style14 {
            width: 21%;
            height: 44px;
        }
        .auto-style15 {
            height: 44px;
        }
        .auto-style16 {
            width: 24%;
            height: 44px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" rowspan="18">
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
                <td class="auto-style2" rowspan="18">
                    &nbsp;</td>
                <td colspan="3" rowspan="2" style="font-weight: 700; text-decoration: underline">
                    <asp:Label ID="Label12" runat="server" Text="Add Coupon" Width="531px" Font-Size="Larger" style="text-align: right; font-weight: 700; text-decoration: underline"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:Label ID="Label3" runat="server" Text="Please enter coupon details:" Width="375px" Font-Size="Larger" style="text-align: center; font-weight: 700; text-decoration: underline"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label4" runat="server" Text="enter coupon name:" Width="250px"></asp:Label>
                </td>
                <td class="auto-style2" colspan="3">
                    <asp:TextBox ID="txtBoxCouponName" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Coupon price is required." ForeColor="#FF3300" ControlToValidate="txtBoxCouponPrice"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label13" runat="server" Text="enter coupon price:" Width="250px"></asp:Label>
                </td>
                <td class="auto-style12" colspan="3">
                    <asp:TextBox ID="txtBoxCouponPrice" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Coupon expired date is required." ForeColor="#FF3300" ControlToValidate="ddl_day"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label7" runat="server" Text="enter coupon expired date:" Width="250px"></asp:Label>
                </td>
                <td class="auto-style2" colspan="3">
                    <asp:Label ID="Label9" runat="server" Text="Day:" Width="90px"></asp:Label>
                    <asp:Label ID="Label10" runat="server" Height="18px" Text="  Month:" Width="90px"></asp:Label>
                    &nbsp;<asp:Label ID="Label11" runat="server" Text="Year:" Width="90px"></asp:Label>
                    <br />
                    <br />
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
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label8" runat="server" Text="enter coupon business id:" Width="250px"></asp:Label>
                </td>
                <td class="auto-style2" colspan="3">
                    <asp:TextBox ID="txtBoxBusinessID" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Coupon business is required." ForeColor="#FF3300" ControlToValidate="txtBoxBusinessID"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label14" runat="server" Text="choose category:" Width="250px" style="text-align: right"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name] FROM [Category]"></asp:SqlDataSource>
                </td>
                <td class="auto-style14"></td>
                <td class="auto-style15"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="btnAdd" runat="server" OnClick="addCoupon_btn_Click" style="text-align: left" Text="Add Coupon" Width="134px" ToolTip="press to add new coupon" />
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style9"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
