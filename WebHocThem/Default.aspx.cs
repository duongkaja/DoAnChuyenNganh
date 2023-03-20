using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHocThem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        WebHocThemDataContext context = new WebHocThemDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            //imgGV1.Src = context.P_GV1().Select(a=>a.HinhAnh).ToString();/*context.P_GV1().Select(a => a.TenUser).ToString()*/
            imgGV1.Src = context.P_GV1().Single().HinhAnh;
            txtGV1.Text = context.P_GV1().Single().TenUser;
            if (context.P_GV1().Single().GioiTinh)
            {
                txtGT1.Text = "Mr. ";
            }
            else txtGT1.Text = "Ms. ";
            txtSDT1.Text = "Số điện thoại: 0" + context.P_GV1().Single().SDT;


            imgGV2.Src = context.P_GV2().Single().HinhAnh;
            txtGV2.Text = context.P_GV2().Single().TenUser;
            if (context.P_GV2().Single().GioiTinh)
            {
                txtGT2.Text = "Mr. ";
            }
            else txtGT2.Text = "Ms. ";
            txtSDT2.Text = "Số điện thoại: 0" + context.P_GV2().Single().SDT;
            
            imgGV3.Src = context.P_GV3().Single().HinhAnh;
            txtGV3.Text = context.P_GV3().Single().TenUser;
            if (context.P_GV3().Single().GioiTinh)
            {
                txtGT3.Text = "Mr. ";
            }
            else txtGT3.Text = "Ms. ";
            txtSDT3.Text = "Số điện thoại: 0" + context.P_GV3().Single().SDT;
            
            imgGV4.Src = context.P_GV4().Single().HinhAnh;
            txtGV4.Text = context.P_GV4().Single().TenUser;
            if (context.P_GV4().Single().GioiTinh)
            {
                txtGT4.Text = "Mr. ";
            }
            else txtGT4.Text = "Ms. ";
            txtSDT4.Text = "Số điện thoại: 0" + context.P_GV4().Single().SDT;

            imgKH1.Src = context.P_KH1().Single().HinhAnh;
            txtKH1.Text = context.P_KH1().Single().TenKhoaHoc;

            imgKH2.Src = context.P_KH2().Single().HinhAnh;
            txtKH2.Text = context.P_KH2().Single().TenKhoaHoc;

            imgKH3.Src = context.P_KH3().Single().HinhAnh;
            txtKH3.Text = context.P_KH3().Single().TenKhoaHoc;  

            linkKH1.HRef = "LopHocKH.aspx?kh="+context.P_KH1().Single().ID+"&mh="+context.P_KH1().Single().MonHoc+"&lv="+context.P_KH1().Single().Levels;
            linkKH2.HRef = "LopHocKH.aspx?kh=" + context.P_KH2().Single().ID + "&mh=" + context.P_KH2().Single().MonHoc + "&lv=" + context.P_KH2().Single().Levels;
            linkKH3.HRef = "LopHocKH.aspx?kh=" + context.P_KH3().Single().ID + "&mh=" + context.P_KH3().Single().MonHoc + "&lv=" + context.P_KH3().Single().Levels;
        }
    }
}