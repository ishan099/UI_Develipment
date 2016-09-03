using DAO;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Data;

namespace SCMSTest
{
    
    
    /// <summary>
    ///This is a test class for CategoryTest and is intended
    ///to contain all CategoryTest Unit Tests
    ///</summary>
    [TestClass()]
    public class CategoryTest
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
        ///A test for InsertCategory
        ///</summary>
        [TestMethod()]
        public void InsertCategoryTest()
        {
            Category target = new Category(); // TODO: Initialize to an appropriate value
            Category obj = null; // TODO: Initialize to an appropriate value
            bool expected = false; // TODO: Initialize to an appropriate value
            bool actual;
            actual = target.InsertCategory(obj);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for Category Constructor
        ///</summary>
        [TestMethod()]
        public void CategoryConstructorTest()
        {
            Category target = new Category();
            Assert.Inconclusive("TODO: Implement code to verify target");
        }

        /// <summary>
        ///A test for GetAllData
        ///</summary>
        [TestMethod()]
        public void GetAllDataTest()
        {
            Category target = new Category(); // TODO: Initialize to an appropriate value
            DataTable expected = null; // TODO: Initialize to an appropriate value
            DataTable actual;
            actual = target.GetAllData();
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetAllDataWithSubCat
        ///</summary>
        [TestMethod()]
        public void GetAllDataWithSubCatTest()
        {
            Category target = new Category(); // TODO: Initialize to an appropriate value
            Category obj = null; // TODO: Initialize to an appropriate value
            DataTable expected = null; // TODO: Initialize to an appropriate value
            DataTable actual;
            actual = target.GetAllDataWithSubCat(obj);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetAllMainCategory
        ///</summary>
        [TestMethod()]
        public void GetAllMainCategoryTest()
        {
            Category target = new Category(); // TODO: Initialize to an appropriate value
            DataTable expected = null; // TODO: Initialize to an appropriate value
            DataTable actual;
            actual = target.GetAllMainCategory();
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetAllMainCategoryByName
        ///</summary>
        [TestMethod()]
        public void GetAllMainCategoryByNameTest()
        {
            Category target = new Category(); // TODO: Initialize to an appropriate value
            string category = string.Empty; // TODO: Initialize to an appropriate value
            DataTable expected = null; // TODO: Initialize to an appropriate value
            DataTable actual;
            actual = target.GetAllMainCategoryByName(category);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetCategoryByName
        ///</summary>
        [TestMethod()]
        public void GetCategoryByNameTest()
        {
            Category target = new Category(); // TODO: Initialize to an appropriate value
            string category = string.Empty; // TODO: Initialize to an appropriate value
            DataTable expected = null; // TODO: Initialize to an appropriate value
            DataTable actual;
            actual = target.GetCategoryByName(category);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetCategoryByMaincat
        ///</summary>
        [TestMethod()]
        public void GetCategoryByMaincatTest()
        {
            Category target = new Category(); // TODO: Initialize to an appropriate value
            Category obj = null; // TODO: Initialize to an appropriate value
            DataTable expected = null; // TODO: Initialize to an appropriate value
            DataTable actual;
            actual = target.GetCategoryByMaincat(obj);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetMainCat
        ///</summary>
        [TestMethod()]
        public void GetMainCatTest()
        {
            Category target = new Category(); // TODO: Initialize to an appropriate value
            Category obj = null; // TODO: Initialize to an appropriate value
            DataTable expected = null; // TODO: Initialize to an appropriate value
            DataTable actual;
            actual = target.GetMainCat(obj);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetSubCategoryByName
        ///</summary>
        [TestMethod()]
        public void GetSubCategoryByNameTest()
        {
            Category target = new Category(); // TODO: Initialize to an appropriate value
            string subCategory = string.Empty; // TODO: Initialize to an appropriate value
            DataTable expected = null; // TODO: Initialize to an appropriate value
            DataTable actual;
            actual = target.GetSubCategoryByName(subCategory);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for InsertMainCategory
        ///</summary>
        [TestMethod()]
        public void InsertMainCategoryTest()
        {
            Category target = new Category(); // TODO: Initialize to an appropriate value
            Category obj = null; // TODO: Initialize to an appropriate value
            bool expected = false; // TODO: Initialize to an appropriate value
            bool actual;
            actual = target.InsertMainCategory(obj);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for InsertSubCategory
        ///</summary>
        [TestMethod()]
        public void InsertSubCategoryTest()
        {
            Category target = new Category(); // TODO: Initialize to an appropriate value
            Category obj = null; // TODO: Initialize to an appropriate value
            bool expected = false; // TODO: Initialize to an appropriate value
            bool actual;
            actual = target.InsertSubCategory(obj);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }
    }
}
