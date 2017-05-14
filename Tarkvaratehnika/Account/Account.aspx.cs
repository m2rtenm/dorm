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
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\DormMatch.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT FirstName, Personality FROM Registration WHERE");
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable GridView1_GetData()
        {
            return null;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}