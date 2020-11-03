using System;

namespace AcronyMaker
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter an Phrase to generate an acronym:");

            string input = Console.ReadLine();;
            
            string[] words =  input.Split(' ');
            char[] letters = new char[words.Length];
            for (int i = 0; i < words.Length; i++)
            {
                letters[i] = char.ToUpper(words[i][0]);
                Console.Write(letters[i]+" ");
            }
        }
    }
}
