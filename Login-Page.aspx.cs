using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace AlaaWarrak_Pr2Final_Project
{
    public partial class Login_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
        }

        protected void bttSubmit_Click(object sender, EventArgs e)
        {
            string conString ="Data Source=THECRIMINALPC;Initial Catalog=Student;Integrated Security=True";
            string queryToCheck = "select count(*) from stdInfo where fName='"+txtfName.Text+"' and NN="+txtNN.Text+"";
            
            SqlConnection connection=null;
            SqlCommand cmd=null;
            try{
                connection = new SqlConnection(conString);
                cmd = new SqlCommand(queryToCheck, connection);
                connection.Open();

                  int count = (int)cmd.ExecuteScalar();

                if (count > 0) { GridView1.Visible = true; }
                else Response.Write("<h2>you are not registered.!</h2>");
            }
            catch (ArgumentNullException) { Response.Write("<h2>Please fill data required as entered !</h2>"); }
            catch (SqlException) { Response.Write("<h2>Check your data and fill it again.!</h2>"); }
            finally { connection.Close(); }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}