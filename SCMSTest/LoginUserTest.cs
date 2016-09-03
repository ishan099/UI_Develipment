using DAO;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Data;

namespace SCMSTest
{
    
    
    /// <summary>
    ///This is a test class for LoginUserTest and is intended
    ///to contain all LoginUserTest Unit Tests
    ///</summary>
    [TestClass()]
    public class LoginUserTest
    {


        private TestContext testContextInstance;

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region Additional test attributes
        // 
        //You can use the following additional attributes as you write your tests:
        //
        //Use ClassInitialize to run code before running the first test in the class
        //[ClassInitialize()]
        //public static void MyClassInitialize(TestContext testContext)
        //{
        //}
        //
        //Use ClassCleanup to run code after all tests in a class have run
        //[ClassCleanup()]
        //public static void MyClassCleanup()
        //{
        //}
        //
        //Use TestInitialize to run code before running each test
        //[TestInitialize()]
        //public void MyTestInitialize()
        //{
        //}
        //
        //Use TestCleanup to run code after each test has run
        //[TestCleanup()]
        //public void MyTestCleanup()
        //{
        //}
        //
        #endregion


        /// <summary>
        ///A test for LoginUser Constructor
        ///</summary>
        [TestMethod()]
        public void LoginUserConstructorTest()
        {
            LoginUser target = new LoginUser();
            Assert.Inconclusive("TODO: Implement code to verify target");
        }

        /// <summary>
        ///A test for getUser
        ///</summary>
        [TestMethod()]
        public void getUserTest()
        {
             LoginUser target = new LoginUser(); // TODO: Initialize to an appropriate value
             LoginUser obj = new LoginUser();
             obj.UserName = "admin";
             obj.Password = "1";
             String expected = "Admin"; // TODO: Initialize to an appropriate value
             DataTable data = target.getUser(obj);
             String actual = data.Rows[0]["Username"].ToString();
           
            Assert.AreEqual(expected, actual);
            //Assert.Inconclusive("Verify the correctness of this test method.");
        }
    }
}
