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
    public partial class EditLecturerPage : System.Web.UI.Page
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
            SqlDataAdapter sda = new SqlDataAdapter("SELECT lecId, lecFirstName, lecLastName, lecAddress, lecPhoneNo, lecEmail, lecDob, lecNationality, lecUsername, lecPassword, lecSubCode1, lecSubCode2, lecSubCode3, lecSubCode4 FROM LECTURER", con);
            using (DataTable dt = new DataTable())
            {
                sda.Fill(dt);
                LecturerGridView.DataSource = dt;
                LecturerGridView.DataBind();
            }
        }

        protected void LecturerGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            LecturerGridView.EditIndex = e.NewEditIndex;
            this.showGridView();
        }

        protected void LecturerGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow rows = LecturerGridView.Rows[e.RowIndex];
            string getId = (LecturerGridView.DataKeys[e.RowIndex].Values[0]).ToString();
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
            String query1 = "UPDATE LECTURER SET lecFirstName=@lecFirstName, lecLastName=@lecLastName, lecAddress=@lecAddress, lecPhoneNo=@lecPhoneNo, lecEmail=@lecEmail, lecDob=@lecDob, lecNationality=@lecNationality, lecUsername=@lecUsername, lecPassword=@lecPassword, lecSubCode1=@lecSubCode1, lecSubCode2=@lecSubCode2, lecSubCode3=@lecSubCode3, lecSubCode4=@lecSubCode4 WHERE lecId=@lecId";
            SqlCommand cmd = new SqlCommand(query1, con);
            cmd.Parameters.AddWithValue("@lecId", getId);
            cmd.Parameters.AddWithValue("@lecFirstName", getFirstName);
            cmd.Parameters.AddWithValue("@lecLastName", getLastName);
            cmd.Parameters.AddWithValue("@lecAddress", getAddress);
            cmd.Parameters.AddWithValue("@lecPhoneNo", getPhoneNo);
            cmd.Parameters.AddWithValue("@lecEmail", getEmail);
            cmd.Parameters.AddWithValue("@lecDob", getDob);
            cmd.Parameters.AddWithValue("@lecNationality", getNationality);
            cmd.Parameters.AddWithValue("@lecUsername", getUsername);
            cmd.Parameters.AddWithValue("@lecPassword", getPassword);
            cmd.Parameters.AddWithValue("@lecSubCode1", getSubCode1);
            cmd.Parameters.AddWithValue("@lecSubCode2", getSubCode2);
            cmd.Parameters.AddWithValue("@lecSubCode3", getSubCode3);
            cmd.Parameters.AddWithValue("@lecSubCode4", getSubCode4);
            cmd.ExecuteNonQuery();
            con.Close();
            LecturerGridView.EditIndex = -1;
            this.showGridView();
        }

        protected void LecturerGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow rows = LecturerGridView.Rows[e.RowIndex];
            string getId = (LecturerGridView.DataKeys[e.RowIndex].Values[0]).ToString();
            string connectionString = ConfigurationManager.ConnectionStrings["db_con"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            String query = "DELETE FROM LECTURER WHERE lecId = @lecId";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@lecId", getId);
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
            LecturerGridView.EditIndex = -1;
            this.showGridView();
        }
    }
}