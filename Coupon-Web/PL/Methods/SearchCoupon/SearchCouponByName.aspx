<%@ Page Title="" Language="C#" MasterPageFile="~/Methods/SearchCoupon/CouponSearch.Master" AutoEventWireup="true" CodeBehind="SearchCouponByName.aspx.cs" Inherits="PL.Customer.SearchCouponByName" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 60px;
    }
    .auto-style4 {
        width: 54px;
    }
        .auto-style9 {
            width: 208px;
        }
        .auto-style10 {
            width: 188px;
            height: 20px;
        }
        .auto-style11 {
            width: 279px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Panel ID="Panel1" runat="server" Height="262px">
    <table class="auto-style1">
        <tr>
            <td class="auto-style10" colspan="5">
                <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.8em" PathSeparator=" : ">
                    <CurrentNodeStyle ForeColor="#333333" />
                    <NodeStyle Font-Bold="True" ForeColor="#990000" />
                    <PathSeparatorStyle Font-Bold="True" ForeColor="#990000" />
                    <RootNodeStyle Font-Bold="True" ForeColor="#FF8000" />
                </asp:SiteMapPath>
            </td>
            <td rowspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" ImageSet="Arrows">
                    <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                    <Nodes>
                        <asp:TreeNode Text="Search" Value="Search">
                            <asp:TreeNode NavigateUrl="~/Customer/SearchCouponByName.aspx" Text="By Name" Value="By Name"></asp:TreeNode>
                            <asp:TreeNode Text="By Category" Value="By Category" NavigateUrl="~/Customer/SearchCouponByCategory.aspx"></asp:TreeNode>
                            <asp:TreeNode Text="By Location" Value="By Location" NavigateUrl="~/Customer/SearchCouponByLocation.aspx"></asp:TreeNode>
                        </asp:TreeNode>
                    </Nodes>
                    <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                    <ParentNodeStyle Font-Bold="False" />
                    <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
                </asp:TreeView>
                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" StartingNodeUrl="~/LoginPage.aspx" />
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">Name:</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox_Name" runat="server" Width="167px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button_Search" runat="server" Text="Search" Width="118px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="3">&nbsp;</td>
            <td class="auto-style9">
                <asp:GridView ID="View" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="6">&nbsp;</td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>

