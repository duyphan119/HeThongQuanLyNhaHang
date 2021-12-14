using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BTL
{
    public partial class ucTrangChu : UserControl
    {
        private SqlConnection cnn;
        private SqlCommand scm;
        private SqlDataReader reader;
        public ucTrangChu()
        {
            InitializeComponent();
            Dock = DockStyle.Fill;
        }

        private void ucTrangChu_Load(object sender, EventArgs e)
        {
            cnn = new SqlConnection(
                @"Data Source=DESKTOP-NIULDEP\SQLEXPRESS;Initial Catalog=btl_pttkht;User ID=sa;Password=password"
            );
            cnn.Open();
            scm = new SqlCommand($@"select count(soban) from ban where trangthai = 1", cnn);
            reader = scm.ExecuteReader();
            if (reader.Read())
            {
                label7.Text = $"{reader.GetInt32(0)}";
            }
            cnn.Close();
            int doanhthu_thangtruoc = 0;
            if (DateTime.Now.Month == 1)
            {
                doanhthu_thangtruoc = LayDoanhThu(12, DateTime.Now.Year - 1);
            }
            else
            {
                doanhthu_thangtruoc = LayDoanhThu(DateTime.Now.Month - 1, DateTime.Now.Year);
            }
            int doanhthu_hientai = LayDoanhThu(DateTime.Now.Month, DateTime.Now.Year);
            double phantram;
            if(doanhthu_thangtruoc == 0)
            {
                phantram = (Convert.ToDouble(doanhthu_hientai) / 100000000) * 100;
            }
            else
            {
                phantram = (Convert.ToDouble(doanhthu_hientai) / Convert.ToDouble(doanhthu_thangtruoc)) * 100;
            }
            circularProgressBar1.Text = $"{ phantram}%";
            circularProgressBar1.Value = Convert.ToInt32(Math.Floor(phantram));
        }
        public int LayDoanhThu(int thang, int nam)
        {
            int doanhthu = 0;
            cnn.Open();
            scm = new SqlCommand($@"declare @doanhthu int
                select @doanhthu = sum(ct.soluong*m.giatien) 
                from hoadon hd, chitiethoadon ct, monan m
                where hd.sohd = ct.sohd and m.mamon = ct.mamon and 
                month(hd.giora) = {thang} and year(hd.giora) = {nam}
                if(@doanhthu is null)
                    begin set @doanhthu = 0 end select @doanhthu", cnn);
            reader = scm.ExecuteReader();
            if (reader.Read())
            {
                doanhthu = reader.GetInt32(0);
            }
            cnn.Close();
            return doanhthu;
        }
    }
}
