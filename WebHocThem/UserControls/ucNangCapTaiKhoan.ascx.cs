using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHocThem.UserControls
{
    public partial class ucNangCapTaiKhoan : System.Web.UI.UserControl
    {
        WebHocThemDataContext context = new WebHocThemDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            input_email.Value = Context.User.Identity.GetUserName();
            input_date.Value = DateTime.Now.ToString();
        }

        public void CreatePDK_Click(object sender, EventArgs e)
        {
            //var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            //manager.FindByEmail(input_email.Value);
            //if (ErrorMessage.Text != null)
            //{
            //    Response.Redirect("~/");
            //    return;
            //}
            PhieuDangKy phieuDangKy = new PhieuDangKy();
            phieuDangKy.Users = input_email.Value;
            phieuDangKy.BienLai = Convert.ToInt32(input_bienlai.Value);
            phieuDangKy.Lop = null;
            phieuDangKy.NoiDungDK = input_describe.Value;
            phieuDangKy.NgayDK = DateTime.Now;
            context.PhieuDangKies.InsertOnSubmit(phieuDangKy);
            context.SubmitChanges();
            ErrorMessage.Text = " Đăng ký thành công vui lòng đợi xác nhận từ trung tâm ";
            //int? check = 0;
            //context.P_PDK(Convert.ToInt32(input_bienlai.Value),null, input_describe.Value, DateTime.Now, input_email.Value, ref check);

            //if (check == 1)
            //{
            //    //ErrorMessage.Text = check.ToString();
            //    Response.Redirect("~/");
            //}
            //else if (check == 2)
            //{
            //    ErrorMessage.Text = "Vui lòng thêm thông tin cho tài khoản trước khi đăng ký !";
            //}
            //else
            //{
            //    //ErrorMessage.Text = check.ToString();
            //    ErrorMessage.Text = "Lớp đã chọn trùng lịch học hoặc Số lượng học viên đã đủ !";
            //}
            //PhieuDangKy phieuDangKy = new PhieuDangKy();
            //phieuDangKy.BienLai = Convert.ToInt32(input_bienlai.Value);
            //context.PhieuDangKies.InsertOnSubmit(phieuDangKy);
        }
    }
}