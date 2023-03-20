using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using WebHocThem.Models;

namespace WebHocThem.Account
{
    public partial class Login : Page
    {
        //WebHocThemDataContext context;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            RegisterHyperLink.NavigateUrl = "Register";
            // Enable this once you have account confirmation enabled for password reset functionality
            //ForgotPasswordHyperLink.NavigateUrl = "Forgot";
            OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            //if (!IsPostBack)
            //{
            //   url = Request.QueryString["url"];
            //}
            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Validate the user password
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();
                var user = manager.FindByName(Email.Text);
                
                if (user != null)
                {
                    if(!user.EmailConfirmed)
                    {
                        FailureText.Text = "Invalid login attempt. You must have a confirmed email account.";
                        ErrorMessage.Visible = true;
                    }
                    else
                    {
                        var result = signinManager.PasswordSignIn(Email.Text, Password.Text, RememberMe.Checked, shouldLockout: false);

                        switch (result)
                        {

                            case SignInStatus.Success:
                                /*context = new WebHocThemDataContext();*/
                                Response.Redirect(Request.QueryString["url"]);
                                break;
                            case SignInStatus.LockedOut:
                                Response.Redirect("/Account/Lockout");
                                break;
                            case SignInStatus.RequiresVerification:
                                Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}",
                                                                Request.QueryString["ReturnUrl"],
                                                                RememberMe.Checked),
                                                  true);
                                break;
                            case SignInStatus.Failure:
                            default:
                                FailureText.Text = "Invalid login attempt";
                                ErrorMessage.Visible = true;
                                break;
                        }
                    }
                }
                // This doen't count login failures towards account lockout
                // To enable password failures to trigger lockout, change to shouldLockout: true
                
            }
        }
    }
}