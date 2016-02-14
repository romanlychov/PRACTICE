<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebRole1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        
        <%--<p class="lead"> Тут будут телефоны</p>   <a href="" class="btn btn-primary btn-lg"> &raquo;</a>--%>

     
        <asp:TextBox ID="TextBox1" runat="server" Text="Введите имя"></asp:TextBox> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> <asp:Button ID="Button1" runat="server" Text="Поиск" OnClick="DeFault" CssClass="btn btn-default" Height="40" />
         
      <asp:TextBox ID="TextBox3" runat="server" Text="Введите имя"></asp:TextBox> <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox> <asp:Button ID="Button2" runat="server" Text="Поиск" OnClick="DeFault" CssClass="btn btn-default" Height="40"/>
        
        <asp:TextBox ID="TextBox5" runat="server" Text="Введите имя"></asp:TextBox> <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox> <asp:Button ID="Button3" runat="server" Text="Поиск" OnClick="DeFault" CssClass="btn btn-default" Height="40" />
          
        <asp:TextBox ID="TextBox7" runat="server" Text="Введите имя"></asp:TextBox> <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox> <asp:Button ID="Button4" runat="server"  Text="Поиск" OnClick="DeFault" CssClass="btn btn-default" Height="40"/>
          
        

    </div>

    
         <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d2311.623912505549!2d30.752136046289994!3d46.44870488002083!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sru!2sua!4v1455188761332" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    
    
    
</asp:Content>
