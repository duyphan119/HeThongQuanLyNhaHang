using BTL.Model;
using System;
using System.Windows.Forms;

namespace BTL
{
    public partial class ucCardFood : UserControl
    {
        private ThemMon preComponent;
        public ucCardFood(ThemMon f, MonAn mon, int soluong)
        {
            InitializeComponent();
            label1.Text = $"{mon.ten}";
            label2.Text = $"ĐVT: {mon.dvt}";
            lblQuantity.Text = "" + soluong;
            preComponent = f;
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            lblQuantity.Text = "" + (Convert.ToInt32(lblQuantity.Text) + 1);
            preComponent.themMon(label1.Text, Convert.ToInt32(lblQuantity.Text));
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            if(Convert.ToInt32(lblQuantity.Text) > 0)
            {
                lblQuantity.Text = "" + (Convert.ToInt32(lblQuantity.Text) - 1);
                preComponent.themMon(label1.Text, Convert.ToInt32(lblQuantity.Text));
            }
        }

    }
}
