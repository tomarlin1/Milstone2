<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="BuyCoupon.aspx.cs" Inherits="PL.Customer.BuyCoupon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 333px;
            }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
            }
        .auto-style7 {
        }
        .auto-style9 {
            height: 26px;
            width: 174px;
        }
        .auto-style10 {
        }
        .auto-style11 {
            height: 26px;
            width: 134px;
        }
        .auto-style12 {
            width: 134px;
        }
        .auto-style13 {
            height: 26px;
            width: 136px;
        }
        .auto-style14 {
            width: 136px;
        }
        .auto-style16 {
            height: 25px;
            width: 124px;
        }
        .auto-style17 {
            height: 25px;
            width: 174px;
        }
        .auto-style18 {
            height: 25px;
            width: 134px;
        }
        .auto-style19 {
            height: 25px;
            width: 136px;
        }
        .auto-style20 {
            height: 25px;
        }
        .auto-style22 {
            width: 124px;
            height: 30px;
        }
        .auto-style23 {
            width: 174px;
            height: 30px;
        }
        .auto-style24 {
            width: 86px;
            height: 30px;
        }
        .auto-style25 {
            width: 136px;
            height: 30px;
        }
        .auto-style26 {
            height: 30px;
        }
        .auto-style27 {
            width: 74px;
            height: 30px;
        }
        .auto-style29 {
            width: 124px;
            height: 33px;
        }
        .auto-style30 {
            height: 33px;
        }
        .auto-style31 {
            width: 134px;
            height: 33px;
        }
        .auto-style32 {
            width: 136px;
            height: 33px;
        }
        .auto-style33 {
            height: 33px;
        }
        .auto-style34 {
            height: 20px;
        }
        .auto-style37 {
            width: 136px;
            height: 20px;
        }
        .auto-style38 {
            height: 20px;
        }
        .auto-style44 {
            width: 124px;
            height: 51px;
        }
        .auto-style45 {
            height: 51px;
        }
        .auto-style46 {
            width: 136px;
            height: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
        
       <table class="auto-style1">
        <tr>
            <td class="auto-style4" rowspan="17">
                <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.8em" PathSeparator=" : ">
                    <CurrentNodeStyle ForeColor="#333333" />
                    <NodeStyle Font-Bold="True" ForeColor="#990000" />
                    <PathSeparatorStyle Font-Bold="True" ForeColor="#990000" />
                    <RootNodeStyle Font-Bold="True" ForeColor="#FF8000" />
                </asp:SiteMapPath>
                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" StartingNodeUrl="~/Customer/CustomerHomeP.aspx" />
                <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" ImageSet="Arrows">
                    <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                    <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                    <ParentNodeStyle Font-Bold="False" />
                    <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
                </asp:TreeView>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Buy Coupon:" Width="272px" style="direction: ltr; text-decoration: underline; font-weight: 700;" Font-Size="Larger"></asp:Label>
            </td>
            <td class="auto-style12" colspan="2">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="4">
                <asp:Label ID="Label11" runat="server" Text="Choose the ID of the coupon you wish to buy:" Width="494px" style="font-weight: 700; text-decoration: underline"></asp:Label>
            </td>
            <td class="auto-style13"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style44">
                <asp:Label ID="Label3" runat="server" Text="Coupon id:" Width="140px"></asp:Label>
            </td>
            <td class="auto-style45" colspan="3">
                &nbsp;&nbsp;
                <asp:DropDownList ID="ddlID" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlID_SelectedIndexChanged" ValidationGroup="aaa">
                    <asp:ListItem>Choose ID</asp:ListItem>
                </asp:DropDownList>
                <asp:Label runat="server" Text="Choose coupon!" Width="140px" ID="lblerrorChoose" ForeColor="#FF3300" style="font-weight: 700" Visible="False"></asp:Label>
            </td>
            <td class="auto-style46">&nbsp;</td>
            <td class="auto-style45"></td>
            <td class="auto-style45"></td>
            <td class="auto-style45"></td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label12" runat="server" Text="Coupon name:" Width="140px"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:Label ID="lblName" runat="server" Width="140px"></asp:Label>
            </td>
            <td class="auto-style12" colspan="2">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label4" runat="server" Text="Coupon Price:" Width="140px"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:Label ID="lblCouponPrice" runat="server" Width="140px"></asp:Label>
            </td>
            <td class="auto-style12" colspan="2">
                <asp:Label ID="Label10" runat="server" Text="Discount:" Width="140px"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:Label ID="lbldiscount" runat="server" Width="140px"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label6" runat="server" Text="Expired Date:" Width="140px" Height="20px"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:Label ID="lblExpiredDate" runat="server" Width="140px" Height="16px"></asp:Label>
            </td>
            <td class="auto-style12" colspan="2">
                <asp:Label ID="lbl11" runat="server" Width="140px">Rating</asp:Label>
            </td>
            <td class="auto-style14">
                <asp:Label ID="lblRating" runat="server" Width="140px"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label5" runat="server" Text="Bussiness ID:" Width="140px"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:Label ID="lblBusinessID" runat="server" Width="140px"></asp:Label>
            </td>
            <td class="auto-style11" colspan="2">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style9"></td>
            <td class="auto-style11" colspan="2"></td>
            <td class="auto-style13"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="l13" runat="server" Width="140px" Font-Size="Larger" style="font-weight: 700; text-decoration: underline">Order:</asp:Label>
            </td>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style12" colspan="2">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12" colspan="2">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:Label ID="Label7" runat="server" Text="Pay By:" Width="140px"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:Label runat="server" Text="Card Number:" Width="140px"></asp:Label>
            </td>
            <td class="auto-style18" colspan="2">
                <asp:Label ID="Label8" runat="server" Text="Validity:" Width="140px"></asp:Label>
            </td>
            <td class="auto-style19">
                <asp:Label ID="Label9" runat="server" Text="3 Last Numbers:" Width="140px"></asp:Label>
            </td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12" colspan="2">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22">
                <asp:DropDownList ID="payment_dropDownList" runat="server" Width="140px">
                    <asp:ListItem>Visa</asp:ListItem>
                    <asp:ListItem>Master Card</asp:ListItem>
                    <asp:ListItem>Western Union</asp:ListItem>
                    <asp:ListItem>Isracart</asp:ListItem>
                    <asp:ListItem>Diners Club</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style23">
                <asp:TextBox ID="getCardNumber_tb" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style27">
                <asp:DropDownList ID="validityMonth_ddl" runat="server" Width="70px">
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
            </td>
            <td class="auto-style24">
                <asp:DropDownList ID="validityYear_ddl" runat="server">
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
                    <asp:ListItem>2025</asp:ListItem>
                    <asp:ListItem>2026</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="get3lastNumbers_tb" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style26"></td>
            <td class="auto-style26"></td>
            <td class="auto-style26"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="CardNumberVali" runat="server" ControlToValidate="getCardNumber_tb" ErrorMessage="Required Card Number!" ForeColor="Red" Width="191px"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style11" colspan="2"></td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="threeLastNumbersVali" runat="server" ControlToValidate="get3lastNumbers_tb" ErrorMessage="Required 3 Last Numbers!" ForeColor="Red" Width="225px"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style29">
                <asp:Button ID="purchaseCoupon_btn" runat="server" Text="Purchase Coupon" Width="140px" OnClick="purchaseCoupon_btn_Click" />
            </td>
            <td class="auto-style30" colspan="4">
                <asp:Label runat="server" Text="Illegal syntax in parameter check again!" Width="348px" ID="lblError" ForeColor="#FF3300" style="font-weight: 700" Visible="False"></asp:Label>
            </td>
            <td class="auto-style33"></td>
            <td class="auto-style33"></td>
            <td class="auto-style33"></td>
        </tr>
        <tr>
            <td class="auto-style34" colspan="4">
                <asp:Label runat="server" Width="474px" ID="lblSerialKey" ForeColor="#FF3300" style="font-weight: 700"></asp:Label>
            </td>
            <td class="auto-style37"></td>
            <td class="auto-style38"></td>
            <td class="auto-style38"></td>
            <td class="auto-style38"></td>
        </tr>
    </table>
&nbsp;<asp:Panel ID="Panel1" runat="server" BackColor="White">
                </asp:Panel>
        
        </asp:Content>
