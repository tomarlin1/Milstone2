<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="BuyCoupon.aspx.cs" Inherits="PL.Customer.BuyCoupon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 333px;
        }
        .auto-style4 {
            width: 333px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
            width: 124px;
        }
        .auto-style7 {
            width: 124px;
        }
        .auto-style9 {
            height: 26px;
            width: 174px;
        }
        .auto-style10 {
            width: 174px;
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
        .auto-style15 {
            width: 333px;
            height: 25px;
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
        .auto-style21 {
            width: 333px;
            height: 30px;
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
        .auto-style28 {
            width: 333px;
            height: 33px;
        }
        .auto-style29 {
            width: 124px;
            height: 33px;
        }
        .auto-style30 {
            width: 174px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
        
       z<table class="auto-style1">
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style6"></td>
            <td class="auto-style9"></td>
            <td class="auto-style11" colspan="2"></td>
            <td class="auto-style13"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label1" runat="server" Text="Buy Coupon:" Width="140px" style="direction: ltr"></asp:Label>
            </td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12" colspan="2">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style9"></td>
            <td class="auto-style11" colspan="2"></td>
            <td class="auto-style13"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label3" runat="server" Text="Coupon id:" Width="140px"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:Label ID="getCouponId_lbl" runat="server" Width="140px"></asp:Label>
            </td>
            <td class="auto-style12" colspan="2">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12" colspan="2">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label4" runat="server" Text="Coupon Price:" Width="140px"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:Label ID="getCouponPrice_lbl" runat="server" Width="140px"></asp:Label>
            </td>
            <td class="auto-style12" colspan="2">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12" colspan="2">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label5" runat="server" Text="Bussiness Name:" Width="140px"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:Label ID="getBussinessName_lbl" runat="server" Width="140px"></asp:Label>
            </td>
            <td class="auto-style12" colspan="2">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style6"></td>
            <td class="auto-style9"></td>
            <td class="auto-style11" colspan="2"></td>
            <td class="auto-style13"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label6" runat="server" Text="Expired Date:" Width="140px"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:Label ID="getExpiredDate_lbl" runat="server" Width="140px"></asp:Label>
            </td>
            <td class="auto-style12" colspan="2">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12" colspan="2">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15"></td>
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
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12" colspan="2">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style22">
                <asp:DropDownList ID="payment_dropDownList" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="140px">
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
            <td class="auto-style4"></td>
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
            <td class="auto-style28"></td>
            <td class="auto-style29">
                <asp:Button ID="purchaseCoupon_btn" runat="server" Text="Purchase Coupon" Width="140px" />
            </td>
            <td class="auto-style30"></td>
            <td class="auto-style31" colspan="2"></td>
            <td class="auto-style32"></td>
            <td class="auto-style33"></td>
            <td class="auto-style33"></td>
            <td class="auto-style33"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12" colspan="2">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
&nbsp;<asp:Panel ID="Panel1" runat="server" BackColor="White">
                </asp:Panel>
        
        </asp:Content>
