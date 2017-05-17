using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tarkvaratehnika.Models;
using System.Data.SqlClient;
using System.Data;

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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string emailTo = GridView1.SelectedRow.Cells[0].Text;
            string emailFrom = GridView2.Rows[0].Cells[0].Text;
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\DormMatch.mdf;Integrated Security=True");
            con.Open();
            SqlCommand com = new SqlCommand("INSERT INTO Requests (FromID, ToID) VALUES (@a, @b)", con);
            com.Parameters.AddWithValue("a", emailFrom);
            com.Parameters.AddWithValue("b", emailTo);
            com.ExecuteNonQuery();
            con.Close();
        }
    }
}