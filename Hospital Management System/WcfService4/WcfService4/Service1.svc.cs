﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Text.RegularExpressions;
using Iveonik.Stemmers;

namespace WcfService4
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {
        IStemmer refe;
        public string Stemming (String str)
        {
            refe = new EnglishStemmer();
            string[] instances = str.Split(' ');

            StringBuilder builder = new StringBuilder();
            string result = null;
           
            foreach (string instance in instances)
            {
                result = result + " "+refe.Stem(instance);
            }
            return (result);
        }

    }
}