﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace baitaplon
{
    public partial class ForgetPassWord : Form
    {
        public ForgetPassWord()
        {
            InitializeComponent();
            lbKetQua.Text = "";
        }
        Modify modify = new Modify();
        private void btnLay_Click(object sender, EventArgs e)
        {
            string email=txtNhapemail.Text;
            if (email.Trim() == "") { MessageBox.Show("Vui lòng nhập email đăng ký!!"); }
            else
            {
                string query = "Select * from TaiKhoan where Email='" + email + "'";
                if (modify.TaiKhoans(query).Count != 0)
                {
                    lbKetQua.ForeColor=Color.Green;
                    lbKetQua.Text="Mật khẩu: " + modify.TaiKhoans(query)[0].Matkhau;
                }
                else
                {
                    lbKetQua.ForeColor = Color.Red;
                    lbKetQua.Text = "Email này chưa được đăng ký!! ";
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Login login = new Login();
            this.Hide();
            login.Show();
        }

        private void QuenMatKhau_Load(object sender, EventArgs e)
        {

        }
    }
}
