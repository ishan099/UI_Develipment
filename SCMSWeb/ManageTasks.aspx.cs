using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DAO;

namespace SCMSWeb
{
    public partial class ManageTasks : System.Web.UI.Page
    {


        Tasks objTask;
        public static  String username;
        //Category catObj = new Category();
        //UserInfo objUser = new UserInfo();
       // Intraction objIntraction = new Intraction();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
                 if (!IsPostBack)
            {
                objTask = new Tasks();
               
                LoadTaskesUserwise();
            
            }

        }

        public void LoadTaskesUserwise()
        {
             try
            {
                DataTable dt;
                objTask = new Tasks();
                dt = objTask.GetTasksUserWise("Admin");
                
                if (dt.Rows.Count > 0)
                {
                   DgvTask.DataSource = dt;
                   DgvTask.DataBind(); 

                }
                else
                {
                  
                }
            }
            catch (Exception ex)
            {
                //LblMessage.Text = ex.Message.ToString();
            }

        }

        protected void BtnRefresh_Click(object sender, EventArgs e)
        {
            LoadTaskesUserwise();
        }      
    
    }
}