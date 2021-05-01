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
    public partial class WebForm5 : System.Web.UI.Page
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
        protected void btnAddLecturer(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            String query = "INSERT INTO LECTURER (lecId, lecFirstName, lecLastName, lecAddress, lecPhoneNo, lecEmail, lecDob, lecNationality, lecUsername, lecPassword, lecSubCode1, lecSubCode2, lecSubCode3, lecSubCode4) VALUES (@lecId, @lecFirstName, @lecLastName, @lecAddress, @lecPhoneNo, @lecEmail, @lecDob, @lecNationality, @lecUsername, @lecPassword, @lecSubCode1, @lecSubCode2, @lecSubCode3, @lecSubCode4)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@lecId", lecIdInput.Text);
            cmd.Parameters.AddWithValue("@lecFirstName", lecFirstNameInput.Text);
            cmd.Parameters.AddWithValue("@lecLastName", lecLastNameInput.Text);
            cmd.Parameters.AddWithValue("@lecAddress", lecAddressInput.Text);
            cmd.Parameters.AddWithValue("@lecPhoneNo", lecPhoneNoInput.Text);
            cmd.Parameters.AddWithValue("@lecEmail", lecEmailInput.Text);
            cmd.Parameters.AddWithValue("@lecDob", lecDobInput.Text);
            cmd.Parameters.AddWithValue("@lecNationality", lecNationalityInput.Text);
            cmd.Parameters.AddWithValue("@lecUsername", lecUsernameInput.Text);
            cmd.Parameters.AddWithValue("@lecPassword", lecPasswordInput.Text);
            cmd.Parameters.AddWithValue("@lecSubCode1", lecSubCode1Input.Text);
            cmd.Parameters.AddWithValue("@lecSubCode2", lecSubCode2Input.Text);
            cmd.Parameters.AddWithValue("@lecSubCode3", lecSubCode3Input.Text);
            cmd.Parameters.AddWithValue("@lecSubCode4", lecSubCode4Input.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("admin_dashboard.aspx");
        }
    }
}