<%@ Page Title="" Language="C#" MasterPageFile="~/SystemManager/SystemMaster.Master" AutoEventWireup="true" CodeBehind="SystemManagerHomeP.aspx.cs" Inherits="PL.SystemManager.SystemManagerHomeP" %>
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
        .auto-style11 {
            width: 209px;
        }
        .auto-style13 {
            height: 26px;
            width: 476px;
        }
        .auto-style14 {
            width: 476px;
            font-size: xx-large;
            text-align: center;
        }
        .auto-style27 {
            height: 26px;
        }
        .auto-style28 {
            height: 26px;
            width: 292px;
        }
        .auto-style29 {
            width: 292px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
        
            <table class="auto-style1">
                <tr>
                    <td class="auto-style25"></td>
                    <td class="auto-style28"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style25"></td>
                    <td class="auto-style28"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style23" rowspan="2">&nbsp;</td>
                    <td class="auto-style11" rowspan="2" colspan="4"><span class="auto-style24">Welcome Back ! </span>
                        <asp:Label ID="lb_userName" runat="server" style="font-size: xx-large" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.8em" PathSeparator=" : ">
                            <CurrentNodeStyle ForeColor="#333333" />
                            <NodeStyle Font-Bold="True" ForeColor="#990000" />
                            <PathSeparatorStyle Font-Bold="True" ForeColor="#990000" />
                            <RootNodeStyle Font-Bold="True" ForeColor="#FF8000" />
                        </asp:SiteMapPath>
                    </td>
                    <td class="auto-style28">
                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style27"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style25" rowspan="3">
                        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" ImageSet="Arrows">
                            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                            <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                            <ParentNodeStyle Font-Bold="False" />
                            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
                        </asp:TreeView>
                        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" StartingNodeUrl="~/SystemManager/SystemManagerHomeP.aspx" />
                    </td>
                    <td class="auto-style28"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style13"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        
        </asp:Content>


