using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace DAO.Tests
{
    [TestClass()]
    public class LoginUserTests
    {
        [TestMethod()]
        public void getUserTest()
        {
            LoginUser loginObj = new LoginUser();
            loginObj.UserName ="Admin";
            loginObj.Password ="123";
            

             loginObj.getUser(loginObj);
              Assert.Fail();
        }

        [TestMethod()]
        public void getUserTest1()
        {
            Assert.Fail();
        }
    }
}
