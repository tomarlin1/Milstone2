<%@ Page Title="" Language="C#" MasterPageFile="~/Methods/SearchBusiness/SearchBusiness.Master" AutoEventWireup="true" CodeBehind="SearchBusinessByName.aspx.cs" Inherits="PL.Methods.SearchBusiness.SearchBusinessByName" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {}
        .auto-style6 {
            height: 20px;
            width: 13%;
        }
        .auto-style8 {
            height: 20px;
            width: 6%;
        }
        .auto-style9 {
            width: 26%;
        }
        .auto-style10 {
            width: 6%;
        }
        .auto-style11 {
            width: 17%;
        }
        .auto-style12 {
            height: 20px;
            width: 26%;
        }
        .auto-style13 {
            height: 20px;
            width: 17%;
        }
        .auto-style19 {
            width: 42%;
        }
        .auto-style20 {
            width: 31px;
        }
        .auto-style21 {
            height: 185px;
        }
        .auto-style22 {
            width: 6%;
            height: 185px;
        }
        .auto-style23 {
            width: 17%;
            height: 185px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
        
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td colspan="2" rowspan="3">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.8em" PathSeparator=" : ">
                            <CurrentNodeStyle ForeColor="#333333" />
                            <NodeStyle Font-Bold="True" ForeColor="#990000" />
                            <PathSeparatorStyle Font-Bold="True" ForeColor="#990000" />
                            <RootNodeStyle Font-Bold="True" ForeColor="#FF8000" />
                        </asp:SiteMapPath>
                    </td>
                    <td class="auto-style6"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td class="auto-style9" rowspan="4">
                        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" ImageSet="Arrows">
                            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                            <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                            <ParentNodeStyle Font-Bold="False" />
                            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
                        </asp:TreeView>
                        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
                    </td>
                    <td class="auto-style21">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style22">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
                    </td>
                    <td class="auto-style23"></td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="3" rowspan="2">
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
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
            </table>
        
        </asp:Content>

