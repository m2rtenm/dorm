using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarkvaratehnika.Account
{
    public partial class PersonalInformation : System.Web.UI.Page
    {
        protected void Next_Form(object sender, EventArgs e)
        {
            Response.Redirect("Account/StudyInformation");
        }
    }
}