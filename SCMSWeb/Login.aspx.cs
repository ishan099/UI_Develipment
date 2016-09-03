using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;
using System.Data;

namespace SCMSWeb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            try
            {

                UserLogin(txtUserName.Text, txtPassword.Text);
            }
            catch (Exception ex)
            {
                LblMessage.Text = ex.Message.ToString();
            }


        }

        public void UserLogin(String uName, String pWord)
        {
            LoginUser loginUser = new LoginUser();
            loginUser.UserName = uName;
            loginUser.Password = pWord;
            DataTable dt =loginUser.getUser(loginUser);

            if(dt.Rows.Count >0)
            {
                if (dt.Rows[0]["UserMode"].ToString() == "Supervisour")
            {
                Session["username"] = uName;
                Response.Redirect("AdminDashboad.aspx");
                
              
            }else
            {
                Session["username"] = uName;
                Response.Redirect("agentDashboad.aspx");
            }
            }
            else
            {
                LblMessage.Text = "Incorrect Username or Password";
            }
           
               
//

        }
    }
}