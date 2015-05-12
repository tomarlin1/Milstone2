<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBusiness.aspx.cs" Inherits="PL.Methods.AddOperation.AddBusiness" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {}
        .auto-style3 {
            text-align: center;
            direction: ltr;
        }
        .auto-style4 {
            width: 21%;
        }
        .auto-style5 {
            width: 24%;
        }
        .auto-style6 {
            width: 21%;
            text-align: right;
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
                    <asp:Label ID="Label12" runat="server" Text="Add Business" Width="531px" Font-Size="Larger" style="text-align: center; font-weight: 700; text-decoration: underline"></asp:Label>
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
                    <asp:Label ID="Label4" runat="server" Text="enter business name:" Width="250px"></asp:Label>
                </td>
                <td class="auto-style2" colspan="3">
                    <asp:TextBox ID="txtBoxName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required." ForeColor="#FF3300" ControlToValidate="txtBoxName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label5" runat="server" Text="enter business address:" Width="250px" Height="20px"></asp:Label>
                </td>
                <td class="auto-style2" colspan="3">
                    <asp:TextBox ID="txtBoxAddress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Address is required." ForeColor="#FF3300" ControlToValidate="txtBoxAddress"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label6" runat="server" Text="enter business description:" Width="250px" Height="20px"></asp:Label>
                </td>
                <td class="auto-style2" colspan="3">
                    <asp:TextBox ID="txtBoxDescription" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Description is required." ForeColor="#FF3300" ControlToValidate="txtBoxDescription"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label8" runat="server" Text="enter business city:" Width="273px" Height="20px"></asp:Label>
                </td>
                <td class="auto-style2" colspan="3">
                    <asp:TextBox ID="txtBoxCity" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Business city is required." ForeColor="#FF3300" ControlToValidate="txtBoxCity"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="btnAdd" runat="server" OnClick="addCoupon_btn_Click" style="text-align: left" Text="Add Business" Width="134px" ToolTip="press to add new coupon" />
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
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
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="lblmax" runat="server" Text="maxID:"></asp:Label>
                </td>
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
