using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSIT214_project
{
    public partial class EditStaffPage : System.Web.UI.Page
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

            if (!this.IsPostBack)
            {
                this.showGridView();
            }
        }
        protected void showGridView()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            SqlDataAdapter sda = new SqlDataAdapter("SELECT staffId, staffFirstName, staffLastName, staffAddress, staffPhoneNo, staffEmail, staffDob, staffNationality, staffUsername, staffPassword FROM STAFF", con);
            using (DataTable dt = new DataTable())
            {
                sda.Fill(dt);
                StaffGridView.DataSource = dt;
                StaffGridView.DataBind();
            }
        }

        protected void StaffGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            StaffGridView.EditIndex = e.NewEditIndex;
            this.showGridView();
        }

        protected void StaffGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow rows = StaffGridView.Rows[e.RowIndex];
            string getId = (StaffGridView.DataKeys[e.RowIndex].Values[0]).ToString();
            string getFirstName = (rows.Cells[1].Controls[0] as TextBox).Text;
            string getLastName = (rows.Cells[2].Controls[0] as TextBox).Text;
            string getAddress = (rows.Cells[3].Controls[0] as TextBox).Text;
            string getPhoneNo = (rows.Cells[4].Controls[0] as TextBox).Text;
            string getEmail = (rows.Cells[5].Controls[0] as TextBox).Text;
            string getDob = (rows.Cells[6].Controls[0] as TextBox).Text;
            string getNationality = (rows.Cells[7].Controls[0] as TextBox).Text;
            string getUsername = (rows.Cells[8].Controls[0] as TextBox).Text;
            string getPassword = (rows.Cells[9].Controls[0] as TextBox).Text;
            string getSubCode1 = (rows.Cells[10].Controls[0] as TextBox).Text;
            string getSubCode2 = (rows.Cells[11].Controls[0] as TextBox).Text;
            string getSubCode3 = (rows.Cells[12].Controls[0] as TextBox).Text;
            string getSubCode4 = (rows.Cells[13].Controls[0] as TextBox).Text;
            string connectionString = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            String query1 = "UPDATE STAFF SET staffFirstName=@staffFirstName, staffLastName=@staffLastName, staffAddress=@staffAddress, staffPhoneNo=@staffPhoneNo, staffEmail=@staffEmail, staffDob=@staffDob, staffNationality=@staffNationality, staffUsername=@staffUsername, staffPassword=@staffPassword WHERE staffId=@staffId";
            SqlCommand cmd = new SqlCommand(query1, con);
            cmd.Parameters.AddWithValue("@staffId", getId);
            cmd.Parameters.AddWithValue("@staffFirstName", getFirstName);
            cmd.Parameters.AddWithValue("@staffLastName", getLastName);
            cmd.Parameters.AddWithValue("@staffAddress", getAddress);
            cmd.Parameters.AddWithValue("@staffPhoneNo", getPhoneNo);
            cmd.Parameters.AddWithValue("@staffEmail", getEmail);
            cmd.Parameters.AddWithValue("@staffDob", getDob);
            cmd.Parameters.AddWithValue("@staffNationality", getNationality);
            cmd.Parameters.AddWithValue("@staffUsername", getUsername);
            cmd.Parameters.AddWithValue("@staffPassword", getPassword);
            cmd.ExecuteNonQuery();
            con.Close();
            StaffGridView.EditIndex = -1;
            this.showGridView();
        }

        protected void StaffGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow rows = StaffGridView.Rows[e.RowIndex];
            string getId = (StaffGridView.DataKeys[e.RowIndex].Values[0]).ToString();
            string connectionString = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            String query = "DELETE FROM STAFF WHERE staffId = @staffId";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@staffId", getId);
            cmd.ExecuteNonQuery();
            con.Close();
            this.showGridView();
        }

        protected void btnClick(object sender, EventArgs e)
        {
            Response.Redirect("admin_dashboard.aspx");
        }
        protected void btnCancel(object sender, GridViewCancelEditEventArgs e)
        {
            StaffGridView.EditIndex = -1;
            this.showGridView();
        }
    }
}