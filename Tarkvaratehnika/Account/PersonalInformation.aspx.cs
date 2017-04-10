using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Tarkvaratehnika.Account
{
    public partial class PersonalInformation : System.Web.UI.Page
    {
        protected void Next_Form(object sender, EventArgs e)
        {
            Session["firstname"] = FirstName.Text;
            Session["lastname"] = LastName.Text;
            Session["birthdate"] = BirthDate.Text;
            Session["citizenship"] = Citizenship.Text;
            Session["city"] = City.Text;
            Session["gender"] = Gender.Text;
            Response.Redirect("~/Account/StudyInformation.aspx");
        }
    }
}