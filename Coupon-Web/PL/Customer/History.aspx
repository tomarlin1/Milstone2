<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="PL.Customer.History" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 479px;
        }
        .auto-style3 {
            width: 28%;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
            width: 3%;
        }
        .auto-style6 {
            height: 23px;
            width: 18%;
        }
        .auto-style7 {
            width: 28%;
        }
        .auto-style8 {
            width: 3%;
        }
        .auto-style9 {
            width: 18%;
        }
        .auto-style10 {
            height: 23px;
            width: 10px;
        }
        .auto-style11 {
            height: 23px;
            width: 35%;
        }
        .auto-style15 {
            width: 10px;
        }
        .auto-style17 {
            width: 35%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style5"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style10"></td>
            <td class="auto-style11"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style7" rowspan="7">
                <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.8em" PathSeparator=" : ">
                    <CurrentNodeStyle ForeColor="#333333" />
                    <NodeStyle Font-Bold="True" ForeColor="#990000" />
                    <PathSeparatorStyle Font-Bold="True" ForeColor="#990000" />
                    <RootNodeStyle Font-Bold="True" ForeColor="#FF8000" />
                </asp:SiteMapPath>
                <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" ImageSet="Arrows">
                    <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                    <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                    <ParentNodeStyle Font-Bold="False" />
                    <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
                </asp:TreeView>
                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" StartingNodeUrl="~/Customer/CustomerHomeP.aspx" />
            </td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="3" rowspan="3">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
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
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
