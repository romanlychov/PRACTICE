<%@ Page Title="Контакты" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebRole1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server"  >
   <div style="margin-left: 150px; margin-top: 50px; width: 900px; height: 499px; background-image: url('contact4.jpg')" >

            <br/>
            <br/>
       <br/>
            <asp:TextBox ID="NameTbx" runat="server" Width="350px" CssClass="form-control" Height="25px" BackColor="#E2E8EE" ></asp:TextBox>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br/>
            <asp:TextBox ID="EmailTbx" runat="server" Width="351px" CssClass="form-control" Height="25px" BackColor="#E6E9ED"></asp:TextBox>
       
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br/>
            <asp:TextBox ID="ThemeTbx" runat="server" Width="351px" CssClass="form-control" Height="25px" BackColor="#EBEBEB"></asp:TextBox>
            &nbsp;<br />
           
            <asp:TextBox ID="TextTbx" runat="server" Height="139px" TextMode="MultiLine" OnTextChanged="TextTbx_TextChanged" Width="354px" CssClass="form-control" BackColor="#EFEFEF"></asp:TextBox>
            <br />
            <asp:Label ID="Success" ForeColor="green" CssClass="label34" runat="server" ></asp:Label>

            <br/>
                 <asp:Button ID="btnSend" Text="Отправить"  runat="server" Width="131px" OnClick="btnSend_Click1" CssClass="btn btn-default" Font-Names="Century Gothic"  />
            <br />
       <br />
       <br />

        </div>
    <script type='text/javascript'>
        (function () {
            var s = document.createElement('script');
            s.type = 'text/javascript';
            s.id = 'supportScript';
            s.charset = 'utf-8';
            s.async = true;
            s.src = '//me-talk.ru/support/support.js?h=503f693f82d3fda9eeb3a8c80cf7c7a1';
            var sc = document.getElementsByTagName('script')[0];

            var callback = function () {
                /*
                    Здесь вы можете вызывать API. Например, чтобы изменить отступ по высоте:
                    supportAPI.setSupportTop(200);
                */
            };

            s.onreadystatechange = s.onload = function () {
                var state = s.readyState;
                if (!callback.done && (!state || /loaded|complete/.test(state))) {
                    callback.done = true;
                    callback();
                }
            };

            if (sc) sc.parentNode.insertBefore(s, sc);
            else document.documentElement.firstChild.appendChild(s);
        })();
</script>
          
</asp:Content>

