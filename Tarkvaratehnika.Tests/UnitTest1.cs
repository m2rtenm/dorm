using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Tarkvaratehnika;
using System.Security.Cryptography;
using System.Text;

namespace Tarkvaratehnika.Tests
{
    [TestClass]
    public class Login
    {
        [TestMethod]
        public void LogIn()
        {
            byte[] hs = new byte[50];
            string pass = "pass";
            MD5 md5 = MD5.Create();
            byte[] inputBytes = Encoding.ASCII.GetBytes(pass);
            byte[] hash = md5.ComputeHash(inputBytes);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hash.Length; i++)
            {
                hs[i] = hash[i];
                sb.Append(hs[i].ToString("x2"));
            }
            var hash_pass = sb.ToString();

            Assert.AreEqual("1a1dc91c907325c69271ddf0c944bc72", hash_pass);
        }
    }
}
