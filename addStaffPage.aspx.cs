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
    public partial class WebForm4 : System.Web.UI.Page
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

        protected void btnAddStaff(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            String query = "INSERT INTO STAFF (staffId, staffFirstName, staffLastName, staffAddress, staffPhoneNo, staffEmail, staffDob, staffNationality, staffUsername, staffPassword) VALUES (@staffId, @staffFirstName, @staffLastName, @staffAddress, @staffPhoneNo, @staffEmail, @staffDob, @staffNationality, @staffUsername, @staffPassword)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@staffId", staffIdInput.Text);
            cmd.Parameters.AddWithValue("@staffFirstName", staffFirstNameInput.Text);
            cmd.Parameters.AddWithValue("@staffLastName", staffLastNameInput.Text);
            cmd.Parameters.AddWithValue("@staffAddress", staffAddressInput.Text);
            cmd.Parameters.AddWithValue("@staffPhoneNo", staffPhoneNoInput.Text);
            cmd.Parameters.AddWithValue("@staffEmail", staffEmailInput.Text);
            cmd.Parameters.AddWithValue("@staffDob", staffDobInput.Text);
            cmd.Parameters.AddWithValue("@staffNationality", staffNationalityInput.Text);
            cmd.Parameters.AddWithValue("@staffUsername", staffUsernameInput.Text);
            cmd.Parameters.AddWithValue("@staffPassword", staffPasswordInput.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Server.Transfer("admin_dashboard.aspx", true);
        }
    }
}