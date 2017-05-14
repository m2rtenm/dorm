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
            Session["music1"] = MusicArtists1.Text;
            Session["music2"] = MusicArtists2.Text;
            Session["music3"] = MusicArtists3.Text;
            Session["movies1"] = Movies1.Text;
            Session["movies2"] = Movies2.Text;
            Session["movies3"] = Movies3.Text;
            Session["tv1"] = TVseries1.Text;
            Session["tv2"] = TVseries2.Text;
            Session["tv3"] = TVseries3.Text;
            Session["bio"] = bio.Value;
            Response.Redirect("~/Account/Personality.aspx");

        }
    }
}