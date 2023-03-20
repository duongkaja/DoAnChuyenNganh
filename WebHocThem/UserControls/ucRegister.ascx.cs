using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebHocThem.Models;

namespace WebHocThem.UserControls
{
    public partial class ucRegister : System.Web.UI.UserControl
    {

        //private String Username { get => input_email.Value; set => input_email.Value = value; }
        //private String Password { get => input_password.Value; set => input_password.Value = value; }
        //private String ConfirmPassword { get => input_repassword.Value; set => input_repassword.Value = value; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ResetForm_Click(object sender, EventArgs e)
        {
            input_email.Value = null;
            input_password.Value = null;
            input_repassword.Value = null;
        }

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = input_email.Value, Email = input_email.Value };
            IdentityResult result = manager.Create(user, input_password.Value);
            ResetForm_Click(sender,e);
            if (result.Succeeded)
            {
                // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                string code = manager.GenerateEmailConfirmationToken(user.Id);
                string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);

                SendMail.SendEmail(user.Email, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.","");


                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");
                if (user.EmailConfirmed)
                {
                    signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                    IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                }
                else
                {
                    ErrorMessage.Text = "An email has been sent to your account. Please view the email and confirm your account to complete the registration process.";
                }
            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}