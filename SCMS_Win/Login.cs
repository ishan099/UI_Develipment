using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DAO;
using log4net;
[assembly: log4net.Config.XmlConfigurator(Watch = true)]

namespace SCMS_Win
{
    public partial class FrmLogin : Form
    {
       
  
        public FrmLogin()
        {
            InitializeComponent();
        }

        private static readonly log4net.ILog actionLog = log4net.LogManager.GetLogger
    (System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        private void FrmLogin_Load(object sender, EventArgs e)
        {
             
          
           
            
        }

        private void BtnClose_Click(object sender, EventArgs e)
        {
            // Login Window Close
            this.Close();
            
        }

        private void BtnLogin_Click(object sender, EventArgs e)
        {

            try
            {

                UserLogin(TxtUname.Text, TxtPword.Text);
            }
            catch (Exception ex)
            {
                actionLog.Error(ex.ToString());
                MessageBox.Show(ex.ToString());
            }


        }

        public void UserLogin(String uName, String pWord)
        {
            LoginUser login = new LoginUser();
            login.UserName = uName;
            login.Password = pWord;
            if (login.getUser(login))
            {

                MainFrm mFrom = new MainFrm();
                actionLog.Info("Login Complated for user " + uName);
                mFrom.Show();

            }
            else
                MessageBox.Show("Incorrect User namd or Password...");
                
                
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void TxtPword_TextChanged(object sender, EventArgs e)
        {

        }

        private void LblPassword_Click(object sender, EventArgs e)
        {

        }

        private void TxtUname_TextChanged(object sender, EventArgs e)
        {

        }

        private void LblUser_Click(object sender, EventArgs e)
        {

        }
    }
}
