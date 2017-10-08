using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CzmWeb
{
    public class ValueJudge
    {
        public static bool IsNumberic(string oText)
        {
            try
            {
                double var1 = Convert.ToDouble(oText);
                return true;
            }
            catch
            {
                return false;
            }
        }
        public static bool IsInt(string oText)
        {
            try
            {
                int var1 = Convert.ToInt32(oText);
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}