using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Tarkvaratehnika.Account
{
    public partial class Personality : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                Session["personality"] = PersonalityType.Text;
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\DormMatch.mdf;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Registration (Email, Password, UserName, FirstName, LastName, DateOfBirth, Citizenship, City, Gender, Relationship, DriverLicense, Cooking, Party, Music, Movie, TV, Personality) values (@a, @b, @c, @d, @e, @f, @g, @h, @i, @j, @k, @l, @m, @n, @o, @p, @q)", con);
                cmd.Parameters.AddWithValue("a", Session["email"]);
                cmd.Parameters.AddWithValue("b", Session["password"]);
                cmd.Parameters.AddWithValue("c", Session["username"]);
                cmd.Parameters.AddWithValue("d", Session["firstname"]);
                cmd.Parameters.AddWithValue("e", Session["lastname"]);
                cmd.Parameters.AddWithValue("f", Session["birthdate"]);
                cmd.Parameters.AddWithValue("g", Session["citizenship"]);
                cmd.Parameters.AddWithValue("h", Session["city"]);
                cmd.Parameters.AddWithValue("i", Session["gender"]);
                cmd.Parameters.AddWithValue("j", Session["relationship"]);
                cmd.Parameters.AddWithValue("k", Session["license"]);
                cmd.Parameters.AddWithValue("l", Session["cooking"]);
                cmd.Parameters.AddWithValue("m", Session["party"]);
                cmd.Parameters.AddWithValue("n", Session["music"]);
                cmd.Parameters.AddWithValue("o", Session["movies"]);
                cmd.Parameters.AddWithValue("p", Session["tv"]);
                cmd.Parameters.AddWithValue("q", Session["personality"]);

                cmd.ExecuteNonQuery();


                Response.Redirect("~/Account/Login.aspx");
                con.Close();
            }
            else
            {
                ErrorMessage.Text = "You have to agree with Terms of Service and Privacy Agreement in order to proceed.";
            }
            
        }
    }
}