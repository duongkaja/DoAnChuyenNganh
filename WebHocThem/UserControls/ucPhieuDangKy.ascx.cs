using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHocThem.UserControls
{
    public partial class ucPhieuDangKY : System.Web.UI.UserControl
    {
        WebHocThemDataContext context = new WebHocThemDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            input_lop.Value = Request.QueryString["id"];
            input_date.Value = DateTime.Now.ToString();
            input_email.Value = Context.User.Identity.GetUserName();
            ErrorMessage.Text = "";
        }

        public void CreatePDK_Click(object sender, EventArgs e)
        {
            //var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            //manager.FindByEmail(input_email.Value);
            int? check = 0;
            context.P_PDK(Convert.ToInt32(input_bienlai.Value), Convert.ToInt32(input_lop.Value), input_describe.Value, DateTime.Now, input_email.Value,ref check);

            if (check == 1)
            {
                //ErrorMessage.Text = check.ToString();
                Response.Redirect("~/");
            }
            else if(check == 2)
            {
                ErrorMessage.Text = "Vui lòng thêm thông tin cho tài khoản trước khi đăng ký !";
            }
            else
            {
                //ErrorMessage.Text = check.ToString();
                ErrorMessage.Text = "Lớp đã chọn trùng lịch học hoặc Số lượng học viên đã đủ !";
            }
            //PhieuDangKy phieuDangKy = new PhieuDangKy();
            //phieuDangKy.BienLai = Convert.ToInt32(input_bienlai.Value);
            //context.PhieuDangKies.InsertOnSubmit(phieuDangKy);
        }
    }
}