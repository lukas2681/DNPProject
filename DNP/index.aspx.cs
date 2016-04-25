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
    public partial class index : System.Web.UI.Page
    {
        public string username;
        public string password;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            username = usernameBox.Text;
            password = passwordBox.Text;

            if(username != "" && password != "")
            {
            
            }
        }

        
    }
}