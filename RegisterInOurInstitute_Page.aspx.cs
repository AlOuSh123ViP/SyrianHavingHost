using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Windows.Navigation;

namespace AlaaWarrak_Pr2Final_Project
{
    public partial class RegisterInOurInstitute_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bttSubmit_Click(object sender, EventArgs e)
        {
            string ConnetionString = "Data Source=THECRIMINALPC;Initial Catalog=Student;Integrated Security=True";
            string query = null;
            SqlConnection sqlc =null;
            SqlCommand cmd;
            try {
               
                query = "insert into stdInfo values('"+txtfName.Text+"','"+txtlName.Text+"','"+txtTofC.Text+"',"+txtDofC.Text+","+txtNN.Text+","+txtPhn.Text+");";
                sqlc = new SqlConnection(ConnetionString);
                cmd = new SqlCommand(query, sqlc);
                //Using Parametrized queries to reslove sql Injection attack
                //to didn't let text box concatenates user inputs directly into the SQL query
                cmd.Parameters.AddWithValue("@fName", txtfName.Text);
                cmd.Parameters.AddWithValue("@lName", txtlName.Text);
                cmd.Parameters.AddWithValue("@TofC", txtTofC.Text);
                cmd.Parameters.AddWithValue("@DofC", txtDofC.Text);
                cmd.Parameters.AddWithValue("@NN", txtNN.Text);
                cmd.Parameters.AddWithValue("@Phn", txtPhn.Text);

                sqlc.Open();
                //This is safer and cleaner 
                //out is a keyword to indicate that an argument is passed by reference 
                //try to parse the txtDofC.Text to an integer, If txtDofC.Text cannot be parsed to an integer, this condition will be skipped.
                if (int.TryParse(txtDofC.Text, out int DofC) && DofC < 50) {
                    MessageBox.Show("you aren't accept in our institute due to your Degree");
                    return; }   
                //if (int.Parse(txtDofC.Text) < 50)return; will throw excpetion if not int and not safer to use
                cmd.ExecuteNonQuery();
                MessageBox.Show("Record inserted Succefully.");

                txtfName.Text=string.Empty;
                txtlName.Text=string.Empty;
                txtTofC.Text=string.Empty;
                txtDofC.Text=string.Empty;
                txtNN.Text=string.Empty;
                txtPhn.Text=string.Empty;
                txtfName.Focus();
                    
                }
            catch (SqlException)
            {
                // Handle the SQL exception here
                // ex.Message contains the error message
                MessageBox.Show("please fill a data in the form or check wheather the data is accepted");
            }
            catch (NullReferenceException ex ) {
                txtfName.Focus();
                MessageBox.Show(ex.Message);
            }
            finally { sqlc.Close(); }

            


        }

        protected void bttShow_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login-Page.aspx");
        }
    }
}