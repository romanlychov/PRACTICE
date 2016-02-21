using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO.Ports;

namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        public string Latitude;
        public string Longitude;
        public double a = 46.449544;
        public double b = 30.753610;

        public double a1 = 46.449544;
        public double b1 = 30.753610;

        public Form1()
        {
            InitializeComponent();
           
            
            latitude1.Text = a1.ToString();
            longtitude1.Text = b1.ToString();
            //label3.Text=

        }


        private void button1_Click(object sender, EventArgs e)
        {
            if (timer1.Enabled == true)
            {
                timer1.Enabled = false;
            }
            else
            {
                timer1.Enabled = true;
            }

            if (button1.Text == "START")
                button1.Text = "STOP";
            else
                button1.Text = "START";

        }

        private void timer1_Tick(object sender, EventArgs e)
        {

            label3.Text = DateTime.Now.ToString();
            
          
        }

        private void trackBar1_Scroll(object sender, EventArgs e)
        {  //{


            double tr = trackBar1.Value*0.1;

            a1 = a + tr;
            b1 = b + tr;

            

            latitude1.Text = a1.ToString();
            longtitude1.Text = b1.ToString();


        }

      
    }

}