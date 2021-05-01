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
    public partial class WebForm6 : System.Web.UI.Page
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
        protected void btnAddClass(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            String query = "INSERT INTO CLASS (classSubCode, classSubName, classLocation) VALUES (@classSubCode, @classSubName, @classLocation)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@classSubCode", classSubCodeInput.Text);
            cmd.Parameters.AddWithValue("@classSubName", classSubNameInput.Text);
            cmd.Parameters.AddWithValue("@classLocation", classLocationInput.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("admin_dashboard.aspx");
        }
    }
}