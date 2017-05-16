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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
                GridViewRow row = GridView1.SelectedRow;
                int idTo = int.Parse(row.Cells[0].Text);
                int idFrom = int.Parse(GridView2.Rows[0].Cells[0].Text);
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\DormMatch.mdf;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Requests (FromID, ToID) values (@a, @b)", con);
                cmd.Parameters.AddWithValue("a", idFrom);
                cmd.Parameters.AddWithValue("b", idTo);
                cmd.ExecuteNonQuery();
                con.Close();
            
        }
    }
}