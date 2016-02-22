<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebRole1._Default" %>
<%@ Import Namespace="System.Net" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <p style="color: green; font-size: 15px;">Формат ввода: поля ширины и долготы следует заполнять числами вида: -1 ; 1.0; 1.   Пределы ширины: от -85 до +85 градусов. Долготы от -179 до +179</p>
        <asp:TextBox ID="Name1Tbx" runat="server"   Text="Введите имя" Width="149px" Font-Size="10pt" Height="30px"></asp:TextBox> 
<%--        <asp:RequiredFieldValidator runat="server" ControlToValidate="LatTbx" CssClass="text-danger" ErrorMessage="Вводить можно только числа в формате 1; 1.0; -1 "></asp:RequiredFieldValidator>--%>
        <asp:TextBox ID="LatTbx" runat="server" Width="151px" Font-Size="10pt" Height="30px" CausesValidation="True">0.0</asp:TextBox>
        <asp:TextBox ID="LngTxt" runat="server" Width="151px" Font-Size="10pt" Height="30px" CausesValidation="True">0.0</asp:TextBox>
        <asp:Button ID="btnGoogle" runat="server" Text="Поиск" OnClick="btnGoogle_Click"  Height="30px" Width="151px" Font-Size="10pt" style="margin-top: 20px;"  />
    </div>

    <script runat="server" type="text/C#">

        public void btnGoogle_Click(object sender, EventArgs e)
        {
            if (LatTbx.Text == "" || LngTxt.Text == "")
            {
                string display = "Введите обе координаты!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);
            }
        }
    </script>
 
    <div id="map" style="width: 1172px; height: 400px;"></div>
    <script>
        
        function initMap() {

            var l = document.getElementById("<%=LatTbx.ClientID%>").value;
            var l2 = document.getElementById("<%= LngTxt.ClientID %>").value;
            var l3 = document.getElementById("<%= Name1Tbx.ClientID %>").value;
            var mapDiv = document.getElementById('map');
            var myLatlng = new google.maps.LatLng(l, l2);
            var map = new google.maps.Map(mapDiv, {
                center: myLatlng,
                zoom: 8
            });

            

            var contentString = l3;
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
