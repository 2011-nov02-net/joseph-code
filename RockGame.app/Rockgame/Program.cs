using System;

namespace Rockgame
{
    class Program
    {
        static void Main(string[] args)
        {
            int score = 0;
            while (true)
            {
                string input = null;

                while (input != "r" && input != "p" && input != "s")
                {
                    Console.WriteLine("Choose Rock, Paper or Scissors: r/p/s");
                    input = Console.ReadLine();
                }

                char pChoice = Convert.ToChar(input);
                char cChoice = ComputerChoice.Choice();

                string winner = PlayerChoice.Outcome(pChoice, cChoice, score);
                Console.WriteLine($"The winner is: {winner}");
            }
        }
    }
}
