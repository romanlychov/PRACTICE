<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebRole1._Default" %>
<%@ Import Namespace="System.Net" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <asp:TextBox ID="Name1Tbx" runat="server"   Text="Введите имя" Width="149px" Font-Size="10pt" Height="30px"></asp:TextBox> 
        <asp:TextBox ID="LatTbx" runat="server" Width="151px" Font-Size="10pt" Height="30px">46</asp:TextBox>
        <asp:TextBox ID="LngTxt" runat="server" Width="151px" Font-Size="10pt" Height="30px">30</asp:TextBox>
        <asp:Button ID="btnGoogle" runat="server" Text="Поиск" OnClick="btnGoogle_Click"  Height="30px" Width="151px" Font-Size="10pt"   />
    </div>

    <script runat="server" type="text/C#">

        public void btnGoogle_Click(object sender, EventArgs e)
        {
             
        }
    </script>
 
    <div id="map" style="width: 1172px; height: 400px;"></div>
    <script>
        
        function initMap() {

            var l = document.getElementById("<%=LatTbx.ClientID%>").value;
            var l2 = document.getElementById("<%= LngTxt.ClientID %>").value;
            var mapDiv = document.getElementById('map');
            var map = new google.maps.Map(mapDiv, {
                center: { lat: 46.460103, lng: 30.4315811 },
                zoom: 8
            });

            var myLatlng = new google.maps.LatLng(l, l2);

            var contentString = '<div id="content"> Ваше устройство находиться тут </div>';
            var infowindow = new google.maps.InfoWindow({
                content: contentString
            });

            var marker = new google.maps.Marker({
                position: myLatlng,
                icon: 'map_icon.png',
                map:map,
                title: "Улица,дом,квартира"
            });

            google.maps.event.addListener(marker, 'click', function () {
                infowindow.open(map, marker);
            });

         


        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?callback=initMap" async defer></script>


    
     
    
    
    
</asp:Content>
