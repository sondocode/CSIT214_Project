using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSIT214_project
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                String val = Session["ADMIN"].ToString();
                if (!val.Equals("admin"))
                {
                    Response.Redirect("Login.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnAddStudent(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            String query = "INSERT INTO STUDENT (studId, studFirstName, studLastName, studAddress, studPhoneNo, studEmail, studDob, studNationality, studProgram, studUsername, studPassword, studSubCode1, studSubCode2, studSubCode3, studSubCode4) VALUES (@studId, @studFirstName, @studLastName, @studAddress, @studPhoneNo, @studEmail, @studDob, @studNationality, @studProgram, @studUsername, @studPassword, @studSubCode1, @studSubCode2, @studSubCode3, @studSubCode4)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@studId", studIdInput.Text);
            cmd.Parameters.AddWithValue("@studFirstName", studFirstNameInput.Text);
            cmd.Parameters.AddWithValue("@studLastName", studLastNameInput.Text);
            cmd.Parameters.AddWithValue("@studAddress", studAddressInput.Text);
            cmd.Parameters.AddWithValue("@studPhoneNo", studPhoneNoInput.Text);
            cmd.Parameters.AddWithValue("@studEmail", studEmailInput.Text);
            cmd.Parameters.AddWithValue("@studDob", studDobInput.Text);
            cmd.Parameters.AddWithValue("@studNationality", studNationalityInput.Text);
            cmd.Parameters.AddWithValue("@studProgram", studProgramInput.Text);
            cmd.Parameters.AddWithValue("@studUsername", studUsernameInput.Text);
            cmd.Parameters.AddWithValue("@studPassword", studPasswordInput.Text);
            cmd.Parameters.AddWithValue("@studSubCode1", studSubCode1Input.Text);
            cmd.Parameters.AddWithValue("@studSubCode2", studSubCode2Input.Text);
            cmd.Parameters.AddWithValue("@studSubCode3", studSubCode3Input.Text);
            cmd.Parameters.AddWithValue("@studSubCode4", studSubCode4Input.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("admin_dashboard.aspx");
        }
    }
}