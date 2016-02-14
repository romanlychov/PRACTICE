<%@ Page Title="Контакты" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebRole1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%--<h2><%: Title %>.</h2>
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
        
    </address>--%>
    
    
        <div style="margin-right: 100px; margin-top: 50px;">

            Введите Имя:<br/>
            <asp:TextBox ID="NameTbx" runat="server" Width="232px" CssClass="form-control" Height="25px" BackColor="#E2E8EE"></asp:TextBox>
            
            <br/>
             Введите Email:<br/>
            <asp:TextBox ID="EmailTbx" runat="server" Width="232px" CssClass="form-control" Height="25px" BackColor="#E6E9ED"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br/>
            Тема сообщения:<br/>
            <asp:TextBox ID="ThemeTbx" runat="server" Width="233px" CssClass="form-control" Height="25px" BackColor="#EBEBEB"></asp:TextBox>
            <br/>
             Текст сообщения:<br/>
            <asp:TextBox ID="TextTbx" runat="server" Height="139px" TextMode="MultiLine" OnTextChanged="TextTbx_TextChanged" Width="236px" CssClass="form-control" BackColor="#EFEFEF"></asp:TextBox>
            <br />
            <br/>
                 <asp:Button ID="btnSend" Text="Отправить"  runat="server" Width="131px" OnClick="btnSend_Click1" CssClass="btn btn-default" Font-Names="Century Gothic" />
            <br />
        <asp:Label ID="Success" ForeColor="green" runat="server"></asp:Label>

        </div>
          
</asp:Content>

