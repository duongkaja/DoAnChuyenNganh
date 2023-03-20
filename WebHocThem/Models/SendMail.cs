using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

namespace WebHocThem.Models
{
    public class SendMail
    {
		public static bool SendEmail(string email, string subject, string body, string attachFile)
		{
			try
			{
				MailMessage msg = new MailMessage(ConstantHelper.emailSender,email,subject,body);
				using(var client = new SmtpClient(ConstantHelper.hostEmail, ConstantHelper.portEmail))
                {
					client.EnableSsl = true;

                    if (!string.IsNullOrEmpty(attachFile))
                    {
						Attachment attachment = new Attachment(attachFile);
						msg.Attachments.Add(attachment);
                    }

					NetworkCredential credential = new NetworkCredential(ConstantHelper.emailSender,ConstantHelper.passwordSender);
					client.UseDefaultCredentials = false;
					client.Credentials = credential;
					client.Send(msg);
                }
			}
			catch (global::System.Exception)
			{

				return false;
			}
			return true;
		}
	}
}