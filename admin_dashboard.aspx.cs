using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSIT214_project
{
    public partial class WebForm2 : System.Web.UI.Page
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
            catch(Exception ex)
            {
                Response.Redirect("Login.aspx");
            }
        }

        /*protected void newStudent(object sender, EventArgs e)
        {
            Response.Redirect("addStudentPage.aspx");
        }

        protected void editStudent(object sender, EventArgs e)
        {
            Server.Transfer("editStudentPage.aspx", true);
        }

        protected void newLecturer(object sender, EventArgs e)
        {
            Server.Transfer("addLecturerPage.aspx", true);
        }

        protected void editLecturer(object sender, EventArgs e)
        {
            Server.Transfer("editLecturerPage.aspx", true);
        }

        protected void newStaff(object sender, EventArgs e)
        {
            Server.Transfer("addStaffPage.aspx", true);
        }

        protected void editStaff(object sender, EventArgs e)
        {
            Server.Transfer("editStaffPage.aspx", true);
        }

        protected void newClass(object sender, EventArgs e)
        {
            Server.Transfer("addClassPage.aspx", true);
        }

        protected void editClass(object sender, EventArgs e)
        {
            Server.Transfer("editClassPage.aspx", true);
        }*/

    }
}