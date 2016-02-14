using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebRole1
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Send()
        {
            MailMessage m = new MailMessage();
            m.To.Add("testansicommunity@gmail.com");
            m.From = new MailAddress(EmailTbx.Text);
            m.Subject = "Тема сообщения:" + ThemeTbx.Text;
            m.Body = "Отправитель: "+EmailTbx.Text+" <br> "+TextTbx.Text;

            m.IsBodyHtml = true;
            SmtpClient sm = new SmtpClient();
            sm.Host = "smtp.gmail.com";
            sm.Port = 587;
            sm.EnableSsl = true;
            sm.Credentials = new NetworkCredential("testansicommunity@gmail.com", "159357nanami");
            sm.Send(m);
            Success.Text = " Сообщение успешно отправлено";
            NameTbx.Text = "";
            EmailTbx.Text = "";
            ThemeTbx.Text = "";
            TextTbx.Text = "";

        }
       

        protected void TextTbx_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click1(object sender, EventArgs e)
        {
            Send();
        }

       
    }
}