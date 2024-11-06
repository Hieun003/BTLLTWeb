using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTLWeb
{
    public class Account 
    {
        private string fullName;
        private string username;
        private string password;
        public String FullName { get { return fullName; } set { fullName = value; } }
        public String Username
        {
            get { return username; }
            set { username = value; }
        }
        public String Password
        {
            get { return password; }
            set { password = value; }
        }
        public Account(string fullName, string username, string password)
        {
            this.FullName = fullName;
            this.Password = password;
            this.username = username;
        }
        public Account() { }
    }
}