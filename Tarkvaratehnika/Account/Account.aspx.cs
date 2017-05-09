using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tarkvaratehnika.Models;
using System.Data.SqlClient;

namespace Tarkvaratehnika.Account
{
    public partial class Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                Username.Text = Session["name"].ToString();
            }
            else
            {
                Response.Redirect("~/");
            }
        }

        protected void LogOutButton_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Response.Redirect("~/");
        }

        public void AlgoritmVoid()
        {
            int MatchPercent = 0;

            var campaignerTuple = new Tuple<string, string>("Advocate", "Architect");
            var defenderTuple = new Tuple<string, string>("Entertainer", "Entrepreneur");
            var adventurerTuple = new Tuple<string, string>("Executive", "Consul");
            var logisticianTuple = new Tuple<string, string>("Entrepreneur", "Entertainer");
            var virtuosoTuple = new Tuple<string, string>("Consul", "Executive");
            var mediatorTuple = new Tuple<string, string>("Protagonist", "Commander");
            var architectTuple = new Tuple<string, string>("Debater", "Campaigner");
            var logicianTuple = new Tuple<string, string>("Commander", "Protagonist");
            var entrepreneurTuple = new Tuple<string, string>("Logistician", "Defender");
            var consulTuple = new Tuple<string, string>("Adventurer", "Virtuoso");
            var entertainerTuple = new Tuple<string, string>("Logistician", "Defender");
            var executiveTuple = new Tuple<string, string>("Virtuoso", "Adventurer");
            var commanderTuple = new Tuple<string, string>("Logician", "Mediator");
            var protagonistTuple = new Tuple<string, string>("Mediator", "Logician");
            var advocateTuple = new Tuple<string, string, string>("Campaigner", "Debater", "Architect");
            var debaterTuple = new Tuple<string, string, string, string, string>("Consul", "Protagonist", "Defender", "Architect", "Advocate");

            Dictionary<string, Tuple<string, string>> campaigner = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> defender = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> adventurer = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> logistician = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> virtuoso = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> mediator = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> architect = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> logician = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> entrepreneur = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> consul = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> entertainer = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> executive = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> commander = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string>> protagonist = new Dictionary<string, Tuple<string, string>>();
            Dictionary<string, Tuple<string, string, string>> advocate = new Dictionary<string, Tuple<string, string, string>>();
            Dictionary<string, Tuple<string, string, string, string, string>> debater = new Dictionary<string, Tuple<string, string, string, string, string>>();

            campaigner.Add("Campaigner", campaignerTuple);
            defender.Add("Defender", defenderTuple);
            adventurer.Add("Adventurer", adventurerTuple);
            logistician.Add("Logistician", logisticianTuple);
            virtuoso.Add("Virtuoso", virtuosoTuple);
            mediator.Add("Mediator", mediatorTuple);
            architect.Add("Architect", architectTuple);
            logician.Add("Logician", logicianTuple);
            entrepreneur.Add("Entrepreneur", entrepreneurTuple);
            consul.Add("Consul", consulTuple);
            entertainer.Add("Entertainer", entertainerTuple);
            executive.Add("Executive", executiveTuple);
            commander.Add("Commander", commanderTuple);
            protagonist.Add("Protagonist", protagonistTuple);
            advocate.Add("Advocate", advocateTuple);
            debater.Add("Debater", debaterTuple);

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\DormMatch.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT FirstName, Personality FROM Registration WHERE");
        }
    }
}