using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Tarkvaratehnika.Models;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Text;
using System.Security.Cryptography;

namespace Tarkvaratehnika.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            /*
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
            IdentityResult result = manager.Create(user, Password.Text);

            SqlConnection con = new SqlConnection();

            if (result.Succeeded)
            {
                // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

                signInManager.SignIn( user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else 
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }*/

            byte[] hs = new byte[50];
            string pass = Password.Text;
            MD5 md5 = MD5.Create();
            byte[] inputBytes = Encoding.ASCII.GetBytes(pass);
            byte[] hash = md5.ComputeHash(inputBytes);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hash.Length; i++)
            {
                hs[i] = hash[i];
                sb.Append(hs[i].ToString("x2"));
            }
            var hash_pass = sb.ToString();
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\DormMatch.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select COUNT(*) FROM Registration WHERE Email='" + Email.Text + "'");
            cmd.Connection = con;
            int obj = Convert.ToInt32(cmd.ExecuteScalar());
            if (obj > 0)
            {
                ErrorMessage.Text = "This email has already been taken! Choose another one!";
            }
            else
            {
                Session["email"] = Email.Text;
                Session["password"] = hash_pass;
                Session["username"] = Email.Text;
                Response.Redirect("~/Account/PersonalInformation.aspx");
            }

        }
    }
}