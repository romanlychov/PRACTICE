<%@ Page Title="Контакты" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebRole1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Наши контакты</h3>
    <address><br />
        Команда разработчиков:<br /><br />
        Шпортюк Анастасия <br /><br />
        Матвеева Анастасия <br /><br />
        Лычов Роман <br /><br />
        Креминский Владислав <br />
        <br /><abbr title="Phone">Телефон:</abbr>
        +380939826013
    </address>

    <address>
        <strong>Поддержка:</strong>   <a href="mailto:nanami2995@gmail.com">nanami2995@gmail.com</a><br />
        
    </address>
</asp:Content>
