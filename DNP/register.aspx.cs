using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DNP
{
    public partial class register : System.Web.UI.Page
    {
        string errorMessage = "";
        string fullname;
        string username;
        string password1;
        string password2;
        string email;

        protected void Button1_Click(object sender, EventArgs e)
        {
            fullname = fullnameRBox.Text;
            username = usernameRBox.Text;
            password1 = passwordRBox.Text;
            password2 = confirmPasswordRBox.Text;
            email = emailRBox.Text;

            int errors = 0;
            Label errorMessage = new Label();

            if (fullname == "")
            {
                errorMessage.Text += "ENTER A FULL NAME<br>";
                errors++;
            }

            if(username == "")
            {
                errorMessage.Text += "ENTER A USERNAME<br>";
                errors++;
            }

            if (email == "")
            {
                errorMessage.Text += "ENTER A email<br>";
                errors++;
            }

            if(password1 != password2)
            {
                errorMessage.Text += "WRONG FUCKING PASSWORD</br>";
                errors++;
            }

            if (errors != 0)
            {
                Controls.Add(errorMessage);
            }
            else
            {
                db();
            }
        }
        
        public void db()
        {
            try
            {
                using (OdbcConnection connection = new OdbcConnection(ConfigurationManager.ConnectionStrings["MySQLConnStr"].ConnectionString))
                {
                    connection.Open();
                    using (OdbcCommand command = new OdbcCommand("INSERT INTO user VALUES (NULL,\"" + username + "\",\"" + fullname + "\",\"" + email + "\",\"" + password1 + "\")", connection))
                    connection.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("An error occured: " + ex.Message);
            }
        }
    }
}