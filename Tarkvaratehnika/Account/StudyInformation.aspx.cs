using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Tarkvaratehnika.Account
{
    public partial class StudyInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\DormMatch.mdf;Integrated Security=True");
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into Kool (University, Degree, Year, Field) values (@a, @b, @c, @d)", con);
            cmd.Parameters.AddWithValue("a", University.Text);
            cmd.Parameters.AddWithValue("b", Degree.Text);
            cmd.Parameters.AddWithValue("c", UniYear.Text);
            cmd.Parameters.AddWithValue("d", StudyField.Text);
            cmd.ExecuteNonQuery();
            */
            Session["university"] = University.Text;
            Session["degree"] = Degree.Text;
            Session["year"] = UniYear.Text;
            Session["field"] = StudyField.Text;
            Response.Redirect("~/Account/AboutYou.aspx");
            //con.Close();
        }
    }
}