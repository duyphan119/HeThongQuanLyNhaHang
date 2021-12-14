using BTL.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BTL
{
    public partial class ucBan : UserControl
    {
        private Ban ban;
        private ucBanHang preComponent;
        public ucBan(ucBanHang f, Ban b)
        {
            InitializeComponent();
            ban = b;
            rjButton1.Text = $"Bàn {ban.soban}";
            preComponent = f;
        }
        public ucBan()
        {
            InitializeComponent();
        }
        private void ucBan_Load(object sender, EventArgs e)
        {
             if(ban.trangthai == true)
            {
                rjButton1.FillColor = Color.FromArgb(94, 148, 255);
                rjButton1.ForeColor = Color.White;
            }
            else
            {
                rjButton1.FillColor = Color.LightCoral;
                rjButton1.ForeColor = Color.White;
            }
        }

        public void sauKhiThanhToan(Ban bn)
        {
            if(ban.soban == bn.soban)
            {
                rjButton1.FillColor = Color.FromArgb(94, 148, 255);
            }
        }

        private void rjButton1_Click_1(object sender, EventArgs e)
        {
            //Xem thông tin
            preComponent.xemThongTinBan(ban);
        }

        private void guna2Button1_Click(object sender, EventArgs e)
        {
            preComponent.datMon(rjButton1, ban);
        }
    }
}
