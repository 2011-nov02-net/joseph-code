using System;
using System.Collections.Generic;
using System.Globalization;
using System.Text;

namespace Rockgame
{
    class PlayerChoice
    {
        public static string Outcome(char pChoice, char AIChoice, int score)
        {
            //decide who wins based on the choices of each player, output the winner and update the score
            if (pChoice == AIChoice)
                return "draw";
            else if( pChoice == 'r')
            {
                if (AIChoice == 's')
                    return "Player";
                else
                    return "Computer";
            }
            else if (pChoice == 's')
            {
                if (AIChoice == 'p')
                    return "Player";
                else
                    return "Computer";
            }
            else   // choice is 'p'
            {
                if (AIChoice == 'r')
                    return "Player";
                else
                    return "Computer";
            }
        }
    }
}
