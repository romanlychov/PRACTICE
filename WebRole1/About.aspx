<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebRole1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    
   <asp:Panel ID="PanelAbout" runat="server" style="margin-bottom: 32px; " Height="1000px" Width="100%" >
       <p style="margin-top: 50px; margin-left: 229px; color: green; font-weight: bold;" > <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>Как использовать нашу систему поиска?</p>
        <p style="margin-top: 50px; margin-left: 100px;" > После регистрации на нашем сайте вам станет доступен сервис поиска местонахождения <br/>по координатам.</p>
        <p style="margin-top: 50px; margin-left: 100px;" > Для работы вам потребуется мобильное приложение, которое вы можете <br/>скачать на нашем ресурсе. <br/> После загрузки и запуска приложения выберите нужные вам координаты и нажмите<br/> кнопку поиска.<br/>
            Если вам потребуется изменить координаты, вы можете это сделать в любое время<br/> передвижением ползунка, или же непосредственно в текстовом поле.<br/>Координаты, которые вы вводите в мобильном приложении автоматически передаются <br/>на веб ресурс, чтобы увидеть их на карте достаточно нажать соответствующую кнопку <br/>на главной странице веб приложения.<br/>После повторного нажатия кнопки поиска вводимые вами данные не будут более<br/> посылаться на сервер нашего веб ресурса.
        </p>
   </asp:Panel>
</asp:Content>
