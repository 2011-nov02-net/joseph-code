using System;
using System.Linq;

namespace CodeSignal.ConsoleApp
{
    class Program
    {
        static void Main(string[] args)
        {
            obj.checkPalindrome("aabaa");
        }

        bool checkPalindrome(string inputString)
        {
            for (int i = 0; i < inputString.Count() / 2; ++i)
            {
                if (inputString[i] != inputString[^(i + 1)])
                {
                    return false;
                }
            }
            return true;
        }
    }
}
