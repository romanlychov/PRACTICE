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
           Panel1.Attributes.Add("style", "background-repeat:no-repeat");
           Panel1.BackImageUrl = "~/contact_form.jpg";

        }

        public void Send()
        {
            

        }
       

        

        protected void btnSend_Click1(object sender, EventArgs e)
        {
            //Send();
        }

       
    }
}