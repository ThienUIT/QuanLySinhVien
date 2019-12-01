﻿namespace GUI_QLSV.UserControls
{
    partial class UC_User
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.chk_Usertype = new System.Windows.Forms.CheckBox();
            this.txtNewPass = new System.Windows.Forms.TextBox();
            this.lblMatkhaumoi = new System.Windows.Forms.Label();
            this.btnSua = new System.Windows.Forms.Button();
            this.btnXoa = new System.Windows.Forms.Button();
            this.lblTacvu = new System.Windows.Forms.Label();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.rdXoa = new System.Windows.Forms.RadioButton();
            this.rdDoiMatkhau = new System.Windows.Forms.RadioButton();
            this.rdTaoUser = new System.Windows.Forms.RadioButton();
            this.btnThoat = new System.Windows.Forms.Button();
            this.btnThem = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btnRefresh = new System.Windows.Forms.Button();
            this.btnTim = new System.Windows.Forms.Button();
            this.txtTenTimKiem = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txtPass = new System.Windows.Forms.TextBox();
            this.d = new System.Windows.Forms.Button();
            this.lblPassword = new System.Windows.Forms.Label();
            this.dgvUser = new System.Windows.Forms.DataGridView();
            this.Username = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Password = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.txtUserName = new System.Windows.Forms.TextBox();
            this.groupBox1.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvUser)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.chk_Usertype);
            this.groupBox1.Controls.Add(this.txtNewPass);
            this.groupBox1.Controls.Add(this.lblMatkhaumoi);
            this.groupBox1.Controls.Add(this.btnSua);
            this.groupBox1.Controls.Add(this.btnXoa);
            this.groupBox1.Controls.Add(this.lblTacvu);
            this.groupBox1.Controls.Add(this.groupBox3);
            this.groupBox1.Controls.Add(this.btnThoat);
            this.groupBox1.Controls.Add(this.btnThem);
            this.groupBox1.Controls.Add(this.groupBox2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.txtPass);
            this.groupBox1.Controls.Add(this.d);
            this.groupBox1.Controls.Add(this.lblPassword);
            this.groupBox1.Controls.Add(this.dgvUser);
            this.groupBox1.Controls.Add(this.txtUserName);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox1.Location = new System.Drawing.Point(0, 0);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(4);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(4);
            this.groupBox1.Size = new System.Drawing.Size(920, 640);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Quản lí tài khoản";
            // 
            // chk_Usertype
            // 
            this.chk_Usertype.AutoSize = true;
            this.chk_Usertype.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chk_Usertype.Location = new System.Drawing.Point(148, 585);
            this.chk_Usertype.Name = "chk_Usertype";
            this.chk_Usertype.Size = new System.Drawing.Size(98, 24);
            this.chk_Usertype.TabIndex = 15;
            this.chk_Usertype.Text = "Usertype";
            this.chk_Usertype.UseVisualStyleBackColor = true;
            // 
            // txtNewPass
            // 
            this.txtNewPass.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNewPass.Location = new System.Drawing.Point(322, 543);
            this.txtNewPass.Margin = new System.Windows.Forms.Padding(4);
            this.txtNewPass.Name = "txtNewPass";
            this.txtNewPass.PasswordChar = '*';
            this.txtNewPass.Size = new System.Drawing.Size(263, 27);
            this.txtNewPass.TabIndex = 8;
            this.txtNewPass.Visible = false;
            // 
            // lblMatkhaumoi
            // 
            this.lblMatkhaumoi.AutoSize = true;
            this.lblMatkhaumoi.BackColor = System.Drawing.Color.Transparent;
            this.lblMatkhaumoi.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMatkhaumoi.Location = new System.Drawing.Point(145, 545);
            this.lblMatkhaumoi.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblMatkhaumoi.Name = "lblMatkhaumoi";
            this.lblMatkhaumoi.Size = new System.Drawing.Size(158, 20);
            this.lblMatkhaumoi.TabIndex = 14;
            this.lblMatkhaumoi.Text = "Nhập mật khẩu mới:";
            this.lblMatkhaumoi.Visible = false;
            // 
            // btnSua
            // 
            this.btnSua.BackColor = System.Drawing.Color.Transparent;
            this.btnSua.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btnSua.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnSua.Location = new System.Drawing.Point(636, 517);
            this.btnSua.Margin = new System.Windows.Forms.Padding(4);
            this.btnSua.Name = "btnSua";
            this.btnSua.Size = new System.Drawing.Size(100, 53);
            this.btnSua.TabIndex = 10;
            this.btnSua.Text = "Sửa";
            this.btnSua.UseVisualStyleBackColor = false;
            // 
            // btnXoa
            // 
            this.btnXoa.BackColor = System.Drawing.Color.Transparent;
            this.btnXoa.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btnXoa.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnXoa.Location = new System.Drawing.Point(763, 455);
            this.btnXoa.Margin = new System.Windows.Forms.Padding(4);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(100, 54);
            this.btnXoa.TabIndex = 11;
            this.btnXoa.Text = "Xóa";
            this.btnXoa.UseVisualStyleBackColor = false;
            // 
            // lblTacvu
            // 
            this.lblTacvu.AutoSize = true;
            this.lblTacvu.BackColor = System.Drawing.Color.Transparent;
            this.lblTacvu.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTacvu.ForeColor = System.Drawing.Color.Maroon;
            this.lblTacvu.Location = new System.Drawing.Point(333, 410);
            this.lblTacvu.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblTacvu.Name = "lblTacvu";
            this.lblTacvu.Size = new System.Drawing.Size(64, 25);
            this.lblTacvu.TabIndex = 11;
            this.lblTacvu.Text = "label4";
            // 
            // groupBox3
            // 
            this.groupBox3.BackColor = System.Drawing.Color.Transparent;
            this.groupBox3.Controls.Add(this.rdXoa);
            this.groupBox3.Controls.Add(this.rdDoiMatkhau);
            this.groupBox3.Controls.Add(this.rdTaoUser);
            this.groupBox3.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.groupBox3.Location = new System.Drawing.Point(108, 327);
            this.groupBox3.Margin = new System.Windows.Forms.Padding(4);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Padding = new System.Windows.Forms.Padding(4);
            this.groupBox3.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.groupBox3.Size = new System.Drawing.Size(695, 65);
            this.groupBox3.TabIndex = 10;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Chọn tác vụ";
            // 
            // rdXoa
            // 
            this.rdXoa.AutoSize = true;
            this.rdXoa.Location = new System.Drawing.Point(532, 27);
            this.rdXoa.Margin = new System.Windows.Forms.Padding(4);
            this.rdXoa.Name = "rdXoa";
            this.rdXoa.Size = new System.Drawing.Size(88, 21);
            this.rdXoa.TabIndex = 5;
            this.rdXoa.Text = "Xóa User";
            this.rdXoa.UseVisualStyleBackColor = true;
            // 
            // rdDoiMatkhau
            // 
            this.rdDoiMatkhau.AutoSize = true;
            this.rdDoiMatkhau.Location = new System.Drawing.Point(289, 27);
            this.rdDoiMatkhau.Margin = new System.Windows.Forms.Padding(4);
            this.rdDoiMatkhau.Name = "rdDoiMatkhau";
            this.rdDoiMatkhau.Size = new System.Drawing.Size(112, 21);
            this.rdDoiMatkhau.TabIndex = 4;
            this.rdDoiMatkhau.Text = "Đổi mật khẩu";
            this.rdDoiMatkhau.UseVisualStyleBackColor = true;
            // 
            // rdTaoUser
            // 
            this.rdTaoUser.AutoSize = true;
            this.rdTaoUser.Checked = true;
            this.rdTaoUser.Location = new System.Drawing.Point(56, 27);
            this.rdTaoUser.Margin = new System.Windows.Forms.Padding(4);
            this.rdTaoUser.Name = "rdTaoUser";
            this.rdTaoUser.Size = new System.Drawing.Size(88, 21);
            this.rdTaoUser.TabIndex = 3;
            this.rdTaoUser.TabStop = true;
            this.rdTaoUser.Text = "Tạo User";
            this.rdTaoUser.UseVisualStyleBackColor = true;
            // 
            // btnThoat
            // 
            this.btnThoat.BackColor = System.Drawing.Color.Transparent;
            this.btnThoat.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btnThoat.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnThoat.Location = new System.Drawing.Point(763, 517);
            this.btnThoat.Margin = new System.Windows.Forms.Padding(4);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(100, 53);
            this.btnThoat.TabIndex = 12;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = false;
            // 
            // btnThem
            // 
            this.btnThem.BackColor = System.Drawing.Color.Transparent;
            this.btnThem.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btnThem.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnThem.Location = new System.Drawing.Point(636, 455);
            this.btnThem.Margin = new System.Windows.Forms.Padding(4);
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(100, 54);
            this.btnThem.TabIndex = 9;
            this.btnThem.Text = "Thêm";
            this.btnThem.UseVisualStyleBackColor = false;
            // 
            // groupBox2
            // 
            this.groupBox2.BackColor = System.Drawing.Color.Transparent;
            this.groupBox2.Controls.Add(this.btnRefresh);
            this.groupBox2.Controls.Add(this.btnTim);
            this.groupBox2.Controls.Add(this.txtTenTimKiem);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Location = new System.Drawing.Point(31, 26);
            this.groupBox2.Margin = new System.Windows.Forms.Padding(4);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Padding = new System.Windows.Forms.Padding(4);
            this.groupBox2.Size = new System.Drawing.Size(857, 81);
            this.groupBox2.TabIndex = 7;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Tìm kiếm User";
            // 
            // btnRefresh
            // 
            this.btnRefresh.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btnRefresh.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnRefresh.Location = new System.Drawing.Point(732, 20);
            this.btnRefresh.Margin = new System.Windows.Forms.Padding(0);
            this.btnRefresh.Name = "btnRefresh";
            this.btnRefresh.Size = new System.Drawing.Size(67, 50);
            this.btnRefresh.TabIndex = 2;
            this.btnRefresh.Text = "Refesh";
            this.btnRefresh.UseVisualStyleBackColor = true;
            // 
            // btnTim
            // 
            this.btnTim.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btnTim.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnTim.Location = new System.Drawing.Point(609, 20);
            this.btnTim.Margin = new System.Windows.Forms.Padding(4);
            this.btnTim.Name = "btnTim";
            this.btnTim.Size = new System.Drawing.Size(92, 50);
            this.btnTim.TabIndex = 1;
            this.btnTim.Text = "Tìm";
            this.btnTim.UseVisualStyleBackColor = true;
            // 
            // txtTenTimKiem
            // 
            this.txtTenTimKiem.Location = new System.Drawing.Point(180, 34);
            this.txtTenTimKiem.Margin = new System.Windows.Forms.Padding(4);
            this.txtTenTimKiem.Name = "txtTenTimKiem";
            this.txtTenTimKiem.Size = new System.Drawing.Size(385, 22);
            this.txtTenTimKiem.TabIndex = 0;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(53, 38);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(116, 17);
            this.label3.TabIndex = 0;
            this.label3.Text = "Tên người dùng: ";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(145, 463);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(91, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "Username:";
            // 
            // txtPass
            // 
            this.txtPass.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPass.Location = new System.Drawing.Point(322, 501);
            this.txtPass.Margin = new System.Windows.Forms.Padding(4);
            this.txtPass.Name = "txtPass";
            this.txtPass.PasswordChar = '*';
            this.txtPass.Size = new System.Drawing.Size(263, 27);
            this.txtPass.TabIndex = 7;
            // 
            // d
            // 
            this.d.Location = new System.Drawing.Point(311, 703);
            this.d.Margin = new System.Windows.Forms.Padding(4);
            this.d.Name = "d";
            this.d.Size = new System.Drawing.Size(100, 28);
            this.d.TabIndex = 4;
            this.d.Text = "Thêm";
            this.d.UseVisualStyleBackColor = true;
            // 
            // lblPassword
            // 
            this.lblPassword.AutoSize = true;
            this.lblPassword.BackColor = System.Drawing.Color.Transparent;
            this.lblPassword.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblPassword.Location = new System.Drawing.Point(145, 503);
            this.lblPassword.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblPassword.Name = "lblPassword";
            this.lblPassword.Size = new System.Drawing.Size(88, 20);
            this.lblPassword.TabIndex = 1;
            this.lblPassword.Text = "Password:";
            // 
            // dgvUser
            // 
            this.dgvUser.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvUser.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Username,
            this.Password});
            this.dgvUser.Location = new System.Drawing.Point(31, 138);
            this.dgvUser.Margin = new System.Windows.Forms.Padding(4);
            this.dgvUser.Name = "dgvUser";
            this.dgvUser.Size = new System.Drawing.Size(857, 159);
            this.dgvUser.TabIndex = 2;
            // 
            // Username
            // 
            this.Username.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.Username.DataPropertyName = "Username";
            this.Username.HeaderText = "Username";
            this.Username.Name = "Username";
            this.Username.ReadOnly = true;
            // 
            // Password
            // 
            this.Password.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.Password.DataPropertyName = "Pass";
            this.Password.HeaderText = "Password";
            this.Password.Name = "Password";
            this.Password.ReadOnly = true;
            // 
            // txtUserName
            // 
            this.txtUserName.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtUserName.Location = new System.Drawing.Point(322, 460);
            this.txtUserName.Margin = new System.Windows.Forms.Padding(4);
            this.txtUserName.Name = "txtUserName";
            this.txtUserName.Size = new System.Drawing.Size(263, 27);
            this.txtUserName.TabIndex = 6;
            // 
            // UC_User
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupBox1);
            this.Name = "UC_User";
            this.Size = new System.Drawing.Size(920, 640);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvUser)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        public System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txtNewPass;
        public System.Windows.Forms.Label lblMatkhaumoi;
        private System.Windows.Forms.Button btnSua;
        private System.Windows.Forms.Button btnXoa;
        public System.Windows.Forms.Label lblTacvu;
        public System.Windows.Forms.GroupBox groupBox3;
        public System.Windows.Forms.RadioButton rdXoa;
        public System.Windows.Forms.RadioButton rdDoiMatkhau;
        public System.Windows.Forms.RadioButton rdTaoUser;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.Button btnThem;
        public System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnRefresh;
        private System.Windows.Forms.Button btnTim;
        private System.Windows.Forms.TextBox txtTenTimKiem;
        public System.Windows.Forms.Label label3;
        public System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtPass;
        private System.Windows.Forms.Button d;
        private System.Windows.Forms.Label lblPassword;
        public System.Windows.Forms.DataGridView dgvUser;
        private System.Windows.Forms.DataGridViewTextBoxColumn Username;
        private System.Windows.Forms.DataGridViewTextBoxColumn Password;
        private System.Windows.Forms.TextBox txtUserName;
        private System.Windows.Forms.CheckBox chk_Usertype;
    }
}