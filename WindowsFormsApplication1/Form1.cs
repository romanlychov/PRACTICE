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
        public Form1()
        {
            InitializeComponent();

           

            try
             {
                     serialPort1.Open();
             }
             catch (Exception ex)
            {
                       MessageBox.Show(ex.Message);
                         timer1.Enabled = false;
                         button1.Text = "START";
                return;
                 }
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
            if (serialPort1.IsOpen)
    {
        string data = serialPort1.ReadExisting();
        string[] strArr = data.Split('$');
        for (int i = 0; i < strArr.Length; i++)
        {
            string strTemp = strArr[i];
            string[] lineArr = strTemp.Split(',');
            if (lineArr[0] == "GPGGA")
            {
                try
                {
              //Latitude
                      Double dLat = Convert.ToDouble(lineArr[2]);
                      int pt = dLat.ToString().IndexOf('.');
 
              double degreesLat =  
              Convert.ToDouble(dLat.ToString().Substring(0, 2));
                            
                      double minutesLat =
              Convert.ToDouble(dLat.ToString().Substring(2));
 
              double DecDegsLat = degreesLat + (minutesLat / 60.0);
 
                      Latitude = lineArr[3].ToString() + DecDegsLat;
 
                      //Longitude
                      Double dLon = Convert.ToDouble(lineArr[4]);
                      pt = dLon.ToString().IndexOf('.');
 
                      double degreesLon =
              Convert.ToDouble(dLon.ToString().Substring(0, pt - 2));
 
                      double minutesLon =
              Convert.ToDouble(dLon.ToString().Substring(pt - 2));
 
              double DecDegsLon = degreesLon + (minutesLon / 60.0);
 
              Longitude = lineArr[5].ToString() + DecDegsLon;
 
                           //Display
                           latitude1.Text = Latitude;
                           longtitude1.Text = Longitude;
 
                          // btnMapIt.Enabled = true;
                }
                catch
                {
                    //Can't Read GPS values
                    latitude1.Text = "GPS Unavailable";
                    longtitude1.Text = "GPS Unavailable";
                  //  btnMapIt.Enabled = false;
                }
            }
        }
    }
    else
    {
        latitude1.Text = "COM Port Closed";
        longtitude1.Text = "COM Port Closed";
        //btnMapIt.Enabled = false;
    }
        }
    }
}
