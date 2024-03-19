﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppQuanLyKho.Model
{
    class NhanVien
    {
        private int id;
        private string tenDangNhap;
        private string matKhau;
        private string hoTen;
        private string diaChi;
        private string sdt;
        private DateTime ngaySinh;
        private bool gioiTinh;
        private string email;
        private bool isActive;
        private bool isAdmin;

        public NhanVien()
        {

        }

        public NhanVien( int id, string tenDangNhap, string matKhau, string hoTen, string diaChi, string sdt, DateTime ngaySinh, bool gioiTinh, string email, bool isActive, bool isAdmin)
        {
            this.id = id;
            this.tenDangNhap = tenDangNhap;
            this.matKhau = matKhau;
            this.hoTen = hoTen;
            this.diaChi = diaChi;
            this.sdt = sdt;
            this.ngaySinh = ngaySinh;
            this.gioiTinh = gioiTinh;
            this.email = email;
            this.isActive = isActive;
            this.isAdmin = isAdmin;
        }

        public NhanVien(string tenDangNhap, string matKhau, string hoTen, string diaChi, string sdt, DateTime ngaySinh, bool gioiTinh, string email, bool isActive, bool isAdmin)
        {
            this.id = 0;
            this.tenDangNhap = tenDangNhap;
            this.matKhau = matKhau;
            this.hoTen = hoTen;
            this.diaChi = diaChi;
            this.sdt = sdt;
            this.ngaySinh = ngaySinh;
            this.gioiTinh = gioiTinh;
            this.email = email;
            this.isActive = isActive;
            this.isAdmin = isAdmin;
        }

        public string TenDangNhap { get => tenDangNhap; set => tenDangNhap = value; }
        public string MatKhau { get => matKhau; set => matKhau = value; }
        public string HoTen { get => hoTen; set => hoTen = value; }
        public string DiaChi { get => diaChi; set => diaChi = value; }
        public string Sdt { get => sdt; set => sdt = value; }
        public DateTime NgaySinh { get => ngaySinh; set => ngaySinh = value; }
        public bool GioiTinh { get => gioiTinh; set => gioiTinh = value; }
        public string Email { get => email; set => email = value; }
        public bool IsActive { get => isActive; set => isActive = value; }
        public bool IsAdmin { get => isAdmin; set => isAdmin = value; }
        public int Id { get => id; set => id = value; }
    }
}
