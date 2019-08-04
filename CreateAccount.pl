# Purpose: To create a user account.
use strict;
use warnings;
use Digest::MD5 qw(md5_hex);

my $fileName = ">C:\\Users\\Negro\\Desktop\\userAccount.txt";
my $username;
my $password;

# This runs the main sub routine
main();

# Main method
sub main
{
	createAccount();
	encryptPassword();
	saveAccount();
	holdConsole();
}

# Prompts user for username and password
sub createAccount
{
	print "Enter username: ";
	$username = <STDIN>;
	print "Enter password: ";
	$password = <STDIN>;
}

# Creates a md5 hash has based off of password entered
sub encryptPassword
{
	$password = md5_hex($password);
}

# Stores hash password and username in a file
sub saveAccount
{
	open(USERACCOUNTFILE, $fileName) || die;
	print USERACCOUNTFILE $username;
	print USERACCOUNTFILE $password;
	close(USERACCOUNTFILE);
}

# Hold console so console window won't close
sub holdConsole
{
	print "\n\nPress enter to continue... ";
	<STDIN>;
}