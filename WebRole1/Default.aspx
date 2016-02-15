<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebRole1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        
        <%--<p class="lead"> Тут будут телефоны</p>   <a href="" class="btn btn-primary btn-lg"> &raquo;</a>--%>

     
        <asp:TextBox ID="TextBox1" runat="server"  CssClass="form-control" Text="Введите имя" Width="370px"></asp:TextBox> <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="370px" Text="Введите код"></asp:TextBox> <asp:Button ID="Button1" runat="server" Text="Поиск" OnClick="DeFault" CssClass="btn2 btn2-default" Height="31px" Width="99px"   />
         
      <%--<asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Text="Введите имя" Width="371px"></asp:TextBox> <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Width="371px" Text="Введите код"></asp:TextBox> <asp:Button ID="Button2" runat="server" Text="Поиск" OnClick="DeFault" CssClass="btn btn-default" Height="31px" Width="99px"/>--%>
        
        <%--<asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Text="Введите имя" Width="728px"></asp:TextBox> <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Width="728px" Text="Введите код"></asp:TextBox> <asp:Button ID="Button3" runat="server" Text="Поиск" OnClick="DeFault" CssClass="btn btn-default" Height="31px" Width="99px" />--%>
          
        <%--<asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Text="Введите имя" Width="729px"></asp:TextBox> <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" Width="729px" Text="Введите код"></asp:TextBox> <asp:Button ID="Button4" runat="server"  Text="Поиск" OnClick="DeFault" CssClass="btn btn-default" Height="31px" Width="99px"/>--%>
          
        

    </div>
   
    
    
    <style>
      #map {
        width: 1172px;
        height: 400px;
      }
    </style>
 
    <div id="map"></div>
    <script>
        function initMap() {
            var mapDiv = document.getElementById('map');
            var map = new google.maps.Map(mapDiv, {
                center: { lat: 46.460103, lng: 30.4315811 },
                zoom: 8
            });

            var myLatlng = new google.maps.LatLng(46.460103, 30.4315811);

            var contentString = '<div id="content"> Устройство находиться тут </div>';
            var infowindow = new google.maps.InfoWindow({
                content: contentString
            });

            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                title: 'Uluru (Ayers Rock)'
            });
           
            google.maps.event.addListener(marker, 'click', function () {
                infowindow.open(map, marker);
            });

        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?callback=initMap" async defer></script>


    
     
    
    
    
</asp:Content>
