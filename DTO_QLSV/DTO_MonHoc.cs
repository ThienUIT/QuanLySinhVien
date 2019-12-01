﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO_QLSV
{
    public class DTO_MonHoc
    {
        private string _MonHoc_MaMonHoc;
        private string _MonHoc_TenMonHoc;
        private int _MonHoc_LoaiMonHoc;
        private int _MonHoc_TinChiLyThuyet;
        private int _MonHoc_TinChiThucHanh;
        private string _MonHoc_MaKhoa;

        public string MonHoc_MaMonHoc
        {
            get { return _MonHoc_MaMonHoc; }
            set { _MonHoc_MaMonHoc = value; }
        }

        public string MonHoc_TenMonHoc
        {
            get { return _MonHoc_TenMonHoc; }
            set { _MonHoc_TenMonHoc = value; }
        }

        public int MonHoc_LoaiMonHoc
        {
            get { return _MonHoc_LoaiMonHoc; }
            set { _MonHoc_LoaiMonHoc = value; }
        }

        public int MonHoc_TinChiLyThuyet
        {
            get { return _MonHoc_TinChiLyThuyet; }
            set { _MonHoc_TinChiLyThuyet = value; }
        }

        public int MonHoc_TinChiThucHanh
        {
            get { return _MonHoc_TinChiThucHanh; }
            set { _MonHoc_TinChiThucHanh = value; }
        }

        public string MonHoc_MaKhoa
        {
            get { return _MonHoc_MaKhoa; }
            set { _MonHoc_MaKhoa = value; }
        }

        public DTO_MonHoc()
        {

        }

        public DTO_MonHoc(string MaMonHoc, string TenMonHoc, int LoaiMonHoc, int TinChiLyThuyet, int TinChiThucHanh, string MaKhoa)
        {
            this.MonHoc_MaMonHoc = MaMonHoc;
            this.MonHoc_TenMonHoc = TenMonHoc;
            this._MonHoc_LoaiMonHoc = LoaiMonHoc;
            this._MonHoc_TinChiLyThuyet = TinChiLyThuyet;
            this._MonHoc_TinChiThucHanh = TinChiThucHanh;
            this._MonHoc_MaKhoa = MaKhoa;
        }
    }
}