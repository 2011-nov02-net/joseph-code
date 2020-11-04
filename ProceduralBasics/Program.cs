using System;

namespace ProceduralBasics
{
    // in a console app project (this template)
    // the runtime looks for a main method to enter the program

    //projects contain classes
    //classes contain member , e.g. methods, variables.
    //   (a method is a sequence of statements which may have input parameters and one output)
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            //variable in C# with types
            // a variable is a slot that can contain a value
            
            //in .NET strings are stored in unicode
            double x = 1/3; // answer will be the same as integer division since the division is performed before assignment to a double type (i.e. 0)

            Console.WriteLine("enter a number: ");
            string input = Console.ReadLine();
            int number = int.Parse(input);
                //switch statement example
                //look as switch expressions/ pattern matching
            switch (number){
                case 4:
                    x=8;
                    break;
                case 7:
                    x =5;
                    break;
            }
            // in C# theres no primitives that are not objects, possibly excepting null
            //"literal" refers to a value that is specified within the code.
        }
    }
}
