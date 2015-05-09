<%@ Page Title="" Language="C#" MasterPageFile="~/Report.Master" AutoEventWireup="true" CodeBehind="ManagerReport.aspx.cs" Inherits="PL.Manager.ManagerReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Panel ID="Panel1" runat="server" Height="250px">
        <asp:TreeView ID="TreeView1" runat="server">
            <Nodes>
                <asp:TreeNode Text="Add" Value="Add" NavigateUrl="~/Manager/ManagerReport.aspx"></asp:TreeNode>
                <asp:TreeNode Text="Delete" Value="Delete"></asp:TreeNode>
            </Nodes>
        </asp:TreeView>
    </asp:Panel>
</asp:Content>

