using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Windows.Forms;
using BTL.Model;
using Guna.UI2.WinForms;

namespace BTL
{
    public partial class ThemMon : Form
    {
        private List<NhomMon> ds_nhom = new List<NhomMon>();
        private List<MonAn> ds_mon = new List<MonAn>();
        private List<ChiTietHoaDon> ds_mon_da_chon = new List<ChiTietHoaDon>(); 
        private HoaDon hd;//Nhận từ ucBanHang
        private ucBanHang preComponent;
        private int total = 0;
        private Guna2Button ban_dang_dat_mon;
        private DAO.DAO_NhomMon dao_nh = new DAO.DAO_NhomMon();
        private DAO.DAO_MonAn dao_m = new DAO.DAO_MonAn();
        public ThemMon(ucBanHang c, HoaDon x, Guna2Button btn)
        {
            InitializeComponent();
            hd = x;
            preComponent = c;
            ds_mon_da_chon = hd.ds_mon;
            ban_dang_dat_mon = btn;
        }

        private void ThemMon_Load(object sender, EventArgs e)
        {
            //Set ToolTip
            ToolTip tt = new ToolTip();
            tt.SetToolTip(btnExit, "Thoát");
            tt.SetToolTip(btnRestoreDown, "Phóng to");
            tt.SetToolTip(btnMinimize, "Thu nhỏ");

            ds_nhom = dao_nh.getAll();
            ds_nhom.ForEach(nhom =>
            {
                cbGroup.Items.Add(nhom.ten);
            });
            cbGroup.SelectedIndex = 0;
            ds_mon_da_chon.ForEach(ct =>
            {
                dgvResult.Rows.Add(new object[]
                {
                    ct.mon.ten, ct.soluong
                });
            });
            total = hd.getTotal();
            dgvResult.ClearSelection();
            lblTotalFood.Text = "Số món đã chọn: " + total;
        }

        private void cbGroup_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbGroup.SelectedIndex != -1)
            {
                ds_mon = dao_m.getByGroup(ds_nhom[cbGroup.SelectedIndex].ma);
                fpnlFood.Controls.Clear();
                ds_mon.ForEach(mon =>
                {
                    ChiTietHoaDon ct = ds_mon_da_chon.Find(cthd => cthd.mon.mamon == mon.mamon);
                    if (ct == null)
                    {
                        fpnlFood.Controls.Add(new ucCardFood(this, mon, 0));
                    }
                    else
                    {
                        fpnlFood.Controls.Add(new ucCardFood(this, ct.mon, ct.soluong));
                    }
                });
            }
        }

        public void themMon(string name, int soluong)
        {
            MonAn mon = ds_mon.Find(item => item.ten == name);
            if(mon != null)
            {
                int index = ds_mon_da_chon.FindIndex(cthd => cthd.mon.mamon == mon.mamon);
                if(index == -1)//Thêm món mới
                {
                    ds_mon_da_chon.Add(new ChiTietHoaDon(mon, soluong));
                    dgvResult.Rows.Add(new object[]
                    {
                        mon.ten, soluong
                    });
                    total++;
                    dgvResult.ClearSelection();
                    dgvResult.BorderStyle = System.Windows.Forms.BorderStyle.None;
                }
                else//Cập nhật số lượng
                {
                    total -= ds_mon_da_chon[index].soluong;
                    ds_mon_da_chon[index].soluong = soluong;
                    dgvResult.Rows[index].Cells[1].Value = soluong;
                    total += ds_mon_da_chon[index].soluong;
                }
                lblTotalFood.Text = "Số món đã chọn: " + total;
            }
        }

        private void btnSubmit_Click(object sender, EventArgs e)
        {
            hd.ds_mon = ds_mon_da_chon;
            preComponent.order(ban_dang_dat_mon, hd);
            Visible = false;
        }

        private void ThemMon_FormClosing(object sender, FormClosingEventArgs e)
        {
            preComponent.order(null, null);
        }

        private void btnRestoreDown_Click(object sender, EventArgs e)
        {
            ToolTip tt = new ToolTip();
            if (WindowState == FormWindowState.Maximized)
            {
                WindowState = FormWindowState.Normal;
                tt.SetToolTip(btnRestoreDown, "Phóng to");
            }
            else
            {
                WindowState = FormWindowState.Maximized;
                tt.SetToolTip(btnRestoreDown, "Bình thường");
            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnMinimize_Click(object sender, EventArgs e)
        {
            WindowState = FormWindowState.Minimized;
        }
    }
}
