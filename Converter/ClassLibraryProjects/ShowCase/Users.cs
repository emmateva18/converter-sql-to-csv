﻿using System;
using System.Collections.Generic;
using System.Text;

namespace ConverterLibrary
{
    public class Bike
    {
        public string Name { get; set; }
        public string Model { get; set; }
        public int Year { get; set; }
    }

    public class Users
    {
        public int Id { get; set; }
        public string Username { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public int Age { get; set; }
    }
}