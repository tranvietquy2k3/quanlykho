﻿using AppQuanLyKho.Controller;
using AppQuanLyKho.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AppQuanLyKho.View
{
    public partial class ThongTinNV : Form
    {
        public ThongTinNV()
        {
            InitializeComponent();
        }

        NhanVienController ctrl = new NhanVienController();

        private void ThongTinNV_Load(object sender, EventArgs e)
        {
            NhanVien infoNV = new NhanVien();
            this.KeyPreview = true;

            //static -> goi vao duoc class(lay ID tu form dang nhap)
            infoNV = ctrl.XemMotNV(DangNhap.ID);

            NV_Admin.Text = Convert.ToString(infoNV.IsAdmin);
            NV_TenDN.Text = infoNV.TenDangNhap;
            NV_HoTen.Text = infoNV.HoTen;
            NV_SDT.Text = infoNV.Sdt;
            NV_Email.Text = infoNV.Email;
            NV_DiaChi.Text = infoNV.DiaChi;
            
        }

        private void ThongTinNV_KeyPress(object sender, KeyPressEventArgs e)
        {

        }

        private void ThongTinNV_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.F1)
            {
                TroGiup.FormName = "GDC_TK_ThongTinTaiKhoan";
                TroGiup troGiup = new TroGiup();
                troGiup.ShowDialog();
            }
        }
    }
}
