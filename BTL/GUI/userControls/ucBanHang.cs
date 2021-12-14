using BTL.Model;
using Guna.UI2.WinForms;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;
using BTL.DAO;

namespace BTL
{
    public partial class ucBanHang : UserControl
    {
        private const string NEW = "Thêm danh sách món";
        private const string OLD = "Cập nhật danh sách món";
        private string action = "";
        private NhanVien nv = new NhanVien();
        private List<Ban> ds_ban = new List<Ban>();
        private List<HoaDon> ds_hd = new List<HoaDon>();
        private decimal totalPrice = 0;
        private int vi_tri_hoa_don = -1;
        private List<ucBan> giaodien_ban = new List<ucBan>();
        private DAO_NhanVien dao_nv = new DAO_NhanVien();
        private DAO_Ban dao_b = new DAO_Ban();
        private DAO_HoaDon dao_hd = new DAO_HoaDon();
        private DAO_ChiTietHoaDon dao_cthd = new DAO_ChiTietHoaDon();
        public ucBanHang(NhanVien x)
        {
            InitializeComponent();
            nv = x;
            Dock = DockStyle.Fill;
        }

        private void ucBanHang_Load(object sender, EventArgs e)
        {
            ds_ban = dao_b.getAll();
            ds_ban.ForEach(ban =>
            {
                giaodien_ban.Add(new ucBan(this, ban));
                fpnlTable.Controls.Add(giaodien_ban[giaodien_ban.Count - 1]);
            });
            //Lấy ra danh sách hoá đơn
            ds_hd = dao_hd.getAll();
        }

        public void xemThongTinBan(Ban b)
        {
            List<ChiTietHoaDon> ds_mon_trong_hd = dao_cthd.getByTable(b.soban);
            totalPrice = 0;
            dgvFood.Rows.Clear();
            ds_mon_trong_hd.ForEach(ct =>
            {
                dgvFood.Rows.Add(new object[]
                {
                    ct.mon.ten, ct.mon.dvt, ct.soluong, ct.mon.gia.ToString("#,##")
                });
                totalPrice += ct.soluong * ct.mon.gia;
            });
            dgvFood.ClearSelection();
            lblInfoTable.Text = "Bàn: " + b.soban;
            lbPriceSum.Text = "Tổng tiền: " + totalPrice.ToString("#,##") + "đ";
            vi_tri_hoa_don = ds_hd.FindIndex(item => item.ban.soban == b.soban && item.giora == item.giovao);
            if (vi_tri_hoa_don != -1)
            {
                lblTimeIn.Text = $"Giờ khách vào: {ds_hd[vi_tri_hoa_don].giovao.ToString("dd-MM-yyyy HH:mm:ss")}";
                ds_hd[vi_tri_hoa_don].ds_mon = ds_mon_trong_hd;
            }
            else
            {
                lblTimeIn.Text = "Giờ khách vào: ";
            }
            lbPriceSum.Text = "Tổng tiền: " + ((totalPrice == 0) ? "" + 0 : totalPrice.ToString("#,##")) + "đ";
            
        }
        public void datMon(Guna2Button btn_Ban, Ban b)
        {
            List<ChiTietHoaDon> ds_mon_trong_hd = dao_cthd.getByTable(b.soban);

            HoaDon _hd = ds_hd.Find(item => item.ban.soban == b.soban && item.giora == item.giovao);
            if (_hd != null)
            {
                action = OLD;
                _hd.ds_mon = ds_mon_trong_hd;
            }
            else
            {
                action = NEW;
                //Bàn này chưa có hoá đơn
                DateTime now = DateTime.Now;
                _hd = new HoaDon(dao_hd.genetareID(), now, now, nv, b, new List<ChiTietHoaDon>());
            }
            new ThemMon(this, _hd, btn_Ban).Visible = true;
        }

        public void order(Guna2Button btn_Ban, HoaDon _hd)
        {
            if (_hd != null) 
            {
                totalPrice = 0;
                if (action == NEW)
                {
                    /*
                    create proc sp_datBan (@sohd int, @soban int, @manv int)
                    as
	                    begin
		                    declare @now datetime;
		                    set @now = getdate();
		                    update ban set trangthai = 0 where soban = @soban;
		                    insert into hoadon(sohd, giovao,giora, soban, manv) values (@sohd, @now,@now,@soban, @manv); 
	                    end
                     */
                    dao_hd.bookTable(_hd);
                    _hd.giovao = _hd.giora = dao_hd.getById(_hd.sohd).giovao;
                    ds_hd.Add(_hd);
                    vi_tri_hoa_don = ds_hd.Count - 1;
                    _hd.ds_mon.ForEach(ct =>
                    {
                        Console.WriteLine($"{ct.mon.ten} --- {ct.soluong}");
                    });
                    //Đổi màu cái bàn
                    btn_Ban.FillColor = Color.LightCoral;
                }
                else
                {
                    //Cập nhật danh sách món
                    //Xoá hết chi tiết hoá đơn 
                    //Rồi thêm lại chi tiết hoá đơn mới
                    dao_cthd.deleteOne(_hd.sohd);
                    vi_tri_hoa_don = ds_hd.FindIndex(item => _hd.sohd == item.sohd && item.giora == item.giovao);
                }
                action = "";
                dgvFood.Rows.Clear();
                //Lưu danh sách món
                _hd.ds_mon.ForEach(item =>
                {
                    if (item.soluong != 0)
                    {
                        dao_cthd.insertOne(_hd.sohd, item.mon.mamon, item.soluong);
                        dgvFood.Rows.Add(new object[]
                        {
                            item.mon.ten, item.mon.dvt, item.soluong, item.mon.gia.ToString("#,##")
                        });
                        totalPrice += item.soluong * item.mon.gia;
                    }
                });
                dgvFood.ClearSelection();
                lblInfoTable.Text = $"Bàn: {_hd.ban.soban}";
                lblTimeIn.Text = $"Giờ khách vào: {_hd.giovao.ToString("dd-MM-yyyy HH:mm:ss")}";
                lbPriceSum.Text = "Tổng tiền: " + totalPrice.ToString("#,##") + "đ";
            }
        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            if (vi_tri_hoa_don != -1)
            {
                ds_hd[vi_tri_hoa_don].giora = DateTime.Now;
                dgvFood.Rows.Clear();
                totalPrice = 0;
                lbPriceSum.Text = "Tổng tiền: 0đ";
                lblTimeIn.Text = "Giờ khách vào: ";
                new Report(ds_hd[vi_tri_hoa_don]).Visible = true;
                lblInfoTable.Text = "Bàn: ";
                giaodien_ban.ForEach(item =>
                {
                    item.sauKhiThanhToan(ds_hd[vi_tri_hoa_don].ban);
                });
                vi_tri_hoa_don = -1;
            }
        }
    }
}
