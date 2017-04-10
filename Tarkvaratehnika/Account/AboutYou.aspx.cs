using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Tarkvaratehnika.Account
{
    public partial class AboutYou : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["relationship"] = Relationship.Text;
            Session["license"] = License.Text;
            Session["cooking"] = Cooking.Text;
            Session["party"] = Party.Text;
            Session["music"] = MusicArtists.Text;
            Session["movies"] = Movies.Text;
            Session["tv"] = TVseries.Text;
            Response.Redirect("~/Account/Personality.aspx");

        }
    }
}