using System;
using System.Collections.Generic;
using System.Text;

namespace Rockgame
{
    class ComputerChoice
    {
        private static Random rand = new Random();

        public static char Choice()
        {
            List<char> options = new List<char>()
            {
            'p',
            'r',
            's'
             };

            char result = options[rand.Next(options.Count)];

            return result;
        }
    }   
}
