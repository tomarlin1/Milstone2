﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Methods/SearchCoupon/CouponSearch.Master" AutoEventWireup="true" CodeBehind="SearchCouponByLocation.aspx.cs" Inherits="PL.Customer.SearchCouponByLocation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 370px;
        }
        .auto-style4 {
            width: 310px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
        
            <asp:Panel ID="Panel1" runat="server" Height="760px">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="3">
                            <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.8em" PathSeparator=" : ">
                                <CurrentNodeStyle ForeColor="#333333" />
                                <NodeStyle Font-Bold="True" ForeColor="#990000" />
                                <PathSeparatorStyle Font-Bold="True" ForeColor="#990000" />
                                <RootNodeStyle Font-Bold="True" ForeColor="#FF8000" />
                            </asp:SiteMapPath>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" ImageSet="Arrows">
                                <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                                <Nodes>
                                    <asp:TreeNode Text="Search" Value="Search">
                                        <asp:TreeNode NavigateUrl="~/Customer/SearchCouponByName.aspx" Text="By Name" Value="By Name"></asp:TreeNode>
                                        <asp:TreeNode Text="By Category" Value="By Category" NavigateUrl="~/Customer/SearchCouponByCategory.aspx"></asp:TreeNode>
                                        <asp:TreeNode Text="By Location" Value="By Location" NavigateUrl="~/Customer/SearchCouponLocation.aspx"></asp:TreeNode>
                                    </asp:TreeNode>
                                </Nodes>
                                <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                                <ParentNodeStyle Font-Bold="False" />
                                <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
                            </asp:TreeView>
                            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
                        </td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;
                        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
                        <script type="text/javascript">
                            if (navigator.geolocation) {
                                navigator.geolocation.getCurrentPosition(function (p) {
                                    var markers = JSON.parse('<%=ConvertDataTabletoString() %>');
                                    var LatLng = new google.maps.LatLng(p.coords.latitude, p.coords.longitude);
                                    var mapOptions = {
                                        center: LatLng,
                                        zoom: 13,
                                        mapTypeId: google.maps.MapTypeId.ROADMAP
                                    };
                                    var infoWindow = new google.maps.InfoWindow();
                                    var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
                                    var marker1 = new google.maps.Marker({
                                        position: LatLng,
                                        map: map,
                                        title: "You are Here!"
                                    });
                                    google.maps.event.addListener(marker1, "click", function (e) {
                                        infoWindow.setContent(marker1.title);
                                        infoWindow.open(map, marker1);
                                    });
                                    for (i = 0; i < markers.length; i++) {
                                        var data = markers[i]
                                        var myLatlng = new google.maps.LatLng(data.lat, data.lng);
                                        var marker = new google.maps.Marker({
                                            position: myLatlng,
                                            map: map,
                                            title: data.title
                                        });
                                        (function(marker, data) {

                                            // Attaching a click event to the current marker
                                            google.maps.event.addListener(marker, "click", function(e) {
                                                infoWindow.setContent(data.description);
                                                infoWindow.open(map, marker);
                                            });
                                        })(marker, data);
                                     }
                                      
                                });
                            } else {
                                alert('Geo Location feature is not supported in this browser.');
                            }
                        </script>
                        </td>
                        <td>&nbsp;
                           <div id="dvMap" style="width: 800px; height: 500px">
                        </div>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp; 
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        
        </asp:Content>

