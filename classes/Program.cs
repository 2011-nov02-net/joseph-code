using System;

namespace classes
{
    class Program
    {
        static void Main(string[] args)
        {
            var account = new BankAccount("JT", 1000);

            Console.WriteLine($"Account {account.Number} was created for {account.Owner} with {account.Balance} initial balance.");

            account.MakeWithdrawal(300, DateTime.Now, "walking around money");
            Console.WriteLine(account.Balance);
            account.MakeDeposit(500, DateTime.Now,"getting paid");
            Console.WriteLine(account.Balance);

            Console.WriteLine(account.GetAccountHistory());
            /*
            //test for positive balance
            try{
                var invalidAccount = new BankAccount("invalid", -55);
            }
            catch(ArgumentOutOfRangeException e){
                Console.WriteLine("exception caught creating an account with negative balance");
                Console.WriteLine(e.ToString());
            }
            */
        }
    }
}
