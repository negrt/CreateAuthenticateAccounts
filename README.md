# CreateAuthenticateAccounts
Two Perl scripts. The first script handles account creation. The second script authenticates accounts.

# What I learned
* How to encrypt passwords with MD5 hash
* How to retrieve data from files with perl language


# Expected Result
Tims-MBP:~ timmac$ cd desktop
Tims-MBP:desktop timmac$ cd Accounts
Tims-MBP:Accounts timmac$ perl CreateAccount.pl
Enter username: MyCoolUserName
Enter password: secret


Press enter to continue... 
Tims-MBP:Accounts timmac$ perl AuthenticateAccount.pl

Enter username: MyCoolUserName
Enter password: secret

Access Granted

Press enter to continue... 

