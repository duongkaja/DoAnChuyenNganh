using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebHocThem.UserControls
{
    public partial class ucManage : System.Web.UI.UserControl
    {
        WebHocThemDataContext context = new WebHocThemDataContext();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //input_.Value = Request.QueryString["id"];
            //input_date.Value = DateTime.Now.ToString();
            input_email.Value = Context.User.Identity.GetUserName();
            ErrorMessage.Text = "";
            try
            {
                var user = context.Users.First(x => x.ID == input_email.Value);
                if (user != null)
                {
                    input_name.Value = user.TenUser;
                    input_phone.Value = user.SDT;
                    if(user.GioiTinh) 
                        input_gender1.Checked = true;
                    input_gender0.Checked = true;
                    input_address.Value = user.DiaChi;
                }
            }
            catch (Exception)
            {
                
            } 
        }
        public void Pnl1(bool val)
        {
            Panel1.Visible=val;
        }

        public void Pnl2(bool val)
        {
            Panel2.Visible = val;
        }


        public void CreateUser_Click(object sender, EventArgs e)
        {
            User user = new User();
            bool check=false;

            if (input_gender1.Checked)
            {
                check = true;
            }
            user.ID = input_email.Value;
            user.SDT = input_phone.Value;
            user.TenUser = input_name.Value;
            user.DiaChi = input_address.Value;
            user.GioiTinh = check;
            //user.HinhAnh = input_img.Value;

            var exist = context.Users.First(x => x.ID == input_email.Value);
            if (exist == null)
            {
                context.Users.InsertOnSubmit(user);
                context.SubmitChanges();
            }            
            Response.Redirect("~/");
        }

        public void btnSave_Click(object sender, EventArgs e)
        {
            WebHocThemDataContext context = new WebHocThemDataContext();
            AspNetUserRole role = new AspNetUserRole();
            role.UserId = input_email.Value;
            role.RoleId = input_role.Value;
            var exist = context.AspNetUserRoles.First(x => x.UserId == role.UserId);
            if (exist != null)
            {
                context.ExecuteCommand("Update AspNetUserRole set RoleId =" + role.RoleId + "Where UserId =" + role.UserId);
            }
            else
            {
                context.AspNetUserRoles.InsertOnSubmit(role);
                context.SubmitChanges();
            }

        }
    }
}