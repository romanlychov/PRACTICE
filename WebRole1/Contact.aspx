<%@ Page Title="Контакты" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebRole1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server"  >

    <%@ Import Namespace="System.Drawing" %>
    <%@ Import Namespace="System.Net.Mail" %>

<%@ Import Namespace="System.Net" %>

<script runat="server" type="text/C#">
     
   
     

    public void btnSend_Click(object sender, EventArgs e)
    {

        MailMessage msg = new MailMessage();

        msg.To.Add(new MailAddress("testansicommunity@gmail.com"));

        msg.From = new MailAddress(txtEmail.Text);

        msg.Subject = txtSubject.Text;

        msg.Body = txtName.Text + Environment.NewLine + txtMessage.Value;

        SmtpClient client = new SmtpClient();

        client.Host = "smtp.gmail.com";

        client.Port = 25;

        NetworkCredential cred = new NetworkCredential("testansicommunity@gmail.com", "159357nanami");

        client.Credentials = cred;

        client.EnableSsl = true;

        client.Send(msg);

        txtName.Text = "";

        txtEmail.Text = "";

        txtSubject.Text = "";

        txtMessage.Value = "";
        
        successful.ForeColor=Color.ForestGreen;
        

    }

    public void btnReset_Click(object sender, EventArgs e)

    {

        txtName.Text = "";

        txtEmail.Text = "";

        txtSubject.Text = "";

        txtMessage.Value = "";
        successful.ForeColor = Color.White;

    }


</script>

<asp:Panel ID="Panel1" runat="server" style="margin-bottom: 32px; margin-top: 50px;  " Height="780px">

  <asp:TextBox ID="txtName" runat="server" style="margin-top: 60px; margin-left: 180px;"></asp:TextBox>

    <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter the information requested." ControlToValidate="txtName"></asp:RequiredFieldValidator>

    <br />

   

    <asp:TextBox ID="txtEmail" runat="server" style="margin-top: 10px; margin-left: 180px;"></asp:TextBox>

    <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter the information requested." ControlToValidate="txtEmail"></asp:RequiredFieldValidator>

    <asp:RegularExpressionValidator runat="server" ErrorMessage="Please enter a valid email address." ControlToValidate="txtEmail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

    <br />

   

    <asp:TextBox ID="txtSubject" runat="server" style="margin-top: 10px; margin-left: 180px;"></asp:TextBox>

    <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter the information requested." ControlToValidate="txtSubject"></asp:RequiredFieldValidator>

    <br />

    

    <textarea runat="server" id="txtMessage" rows="7" cols="24" style="margin-top: 10px; margin-left: 180px;"></textarea>

    <asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter a message." ControlToValidate="txtMessage"></asp:RequiredFieldValidator>

    <br />

    <asp:Button runat="server" ID="btnSend" onclick="btnSend_Click" Text="Отправить" style="margin-left: 180px; margin-top: 10px;" />

    <asp:Button runat="server" ID="btnReset" style="margin-left: 10px; margin-top: 10px;" CausesValidation="false" onclick="btnReset_Click" Text="Очистить" />

    <br />

    <br />
    <asp:Label ID="successful" runat="server" Text="Ваше сообщение было успешно отправлено!" style="margin-left: 180px; margin-top: 10px;" ForeColor="White"></asp:Label>

</asp:Panel>


        
    
    
    

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

