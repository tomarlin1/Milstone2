<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditBusiness.aspx.cs" Inherits="PL.Methods.EditOperations.EditBusiness" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .auto-style1 {
            width: 117%;
            height: 705px;
        }
        .auto-style17 {
            width: 263px;
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
        .auto-style18 {
            width: 24%;
            height: 89px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style17" rowspan="18">
                    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
                    <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.8em" PathSeparator=" : ">
                        <CurrentNodeStyle ForeColor="#333333" />
                        <NodeStyle Font-Bold="True" ForeColor="#990000" />
                        <PathSeparatorStyle Font-Bold="True" ForeColor="#990000" />
                        <RootNodeStyle Font-Bold="True" ForeColor="#FF8000" />
                    </asp:SiteMapPath>
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
                <td colspan="4" rowspan="2" style="font-weight: 700; text-decoration: underline">
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:Label ID="Label3" runat="server" Text="Please enter business details:" Width="375px" Font-Size="Larger" style="text-align: center; font-weight: 700; text-decoration: underline"></asp:Label>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label4" runat="server" Text="enter coupon business:" Width="250px"></asp:Label>
                </td>
                <td class="auto-style2" colspan="4">
                    <asp:TextBox ID="txtBoxBusinessId" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Coupon business is required." ForeColor="#FF3300" ControlToValidate="txtBoxBusinessId"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label13" runat="server" Text="atribute to edit:" Width="250px"></asp:Label>
                </td>
                <td class="auto-style12" colspan="4">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Name</asp:ListItem>
                        <asp:ListItem>Description</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label7" runat="server" Text="enter new value:" Width="250px"></asp:Label>
                </td>
                <td class="auto-style2" colspan="4">
                    &nbsp;<br />
                    <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox1" ErrorMessage="New Value is Required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style2" colspan="4">
                    <asp:Button ID="btnEdit" runat="server" OnClick="addCoupon_btn_Click" style="text-align: left" Text="Edit Business" Width="134px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style14">
                    <asp:Label ID="errorlbl" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style14"></td>
                <td class="auto-style15"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8"></td>
                <td class="auto-style9"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
</form>
</body>
</html>
