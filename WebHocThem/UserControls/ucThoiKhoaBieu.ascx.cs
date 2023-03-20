using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHocThem.UserControls
{
    public partial class ucThoiKhoaBieu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            input_email.Value = Context.User.Identity.GetUserName();
            SuccessMessage.Text = "";
            ErrorMessage.Text = "";
        }

        public void ListTKB(bool val)
        {
            LvTKB.Visible = val;
        }

        public void Panel(bool val)
        {
            themTKB.Visible = val;
        }

        public void CreateTKB_Click(object sender, EventArgs e)
        {
            WebHocThemDataContext context = new WebHocThemDataContext();
            var user = context.Users.First(x=>x.ID == input_email.Value);
            if (user != null)
            {
                int? check = 0;
                context.P_TKB(DateTime.Parse(input_date.Value), Convert.ToInt32(input_lop.Value), Convert.ToInt32(input_ca.Value), Convert.ToInt32(input_dd.Value), input_email.Value, ref check);
                if (check == 1)
                {
                    SuccessMessage.Text = "Thêm mới thời khóa biểu thành công";

                }
                else
                {
                    ErrorMessage.Text = "Hãy kiểm tra lại Ngày học, Địa điểm, Số buổi học còn lại ( Ngày khai giảng < Ngày học < Ngày kết thúc )";
                }
            }
            else
            {
                ErrorMessage.Text = "Vui lòng thêm thông tin cho tài khoản trước khi đăng ký !";
            }
        }
    }
}