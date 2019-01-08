lhs DVSC v1.0

Copyright: 2018 Fall, Fengxiang Lan

Environment: Mac OS 10.13; Ruby 2.5; Sublime & RubyMine

The goals of our DVCS are: 
	1. initialize/create a repository for the specific directory
	2. support the user by adding, deleting, commiting a file or a list of files
	3. support the commands like stat, log, which used to check and show the history
	4. user can check the content of specified file under specified version by using cat
	5. user can merge one repository into current repository
	6. user can clone the repository of one directory into other directory
	7. user also can check the difference between two different visions of the specific file

List of Important Files:
1. Revlog.rb: this is the basic of the whole system, which used to store the information of each revision, which include the content of files, finished times, relationship with other revisions and so on.
2. Manifest.rb: this is used to store information about history
3. Changelog.rb: this is used to store information about history
4. Filelog.rb: this is used to store information about history
5. Repository.rb: this is the top-level module of whole system, which used to provide the interface to users.
6. lhs: this is the enter of our DVCS, it can accpect the command from user, handle this command, and return the final result.


Sample usage:
1. You should down load the .zip of our DVCS
2. Unzip it and remember it location

mkdir foo   								 * used to create a directory
cd foo
alias lhs="The full path of the location of DVCS" 
* alias lhs="/Users/lanfengxiang/desktop/DVCS_lhs/lhs"
lhs init                                     * create a repository in current directory
echo hello > Test.txt					     * create a file and add "hello" into it
lhs add Test.txt							 * add Test into current changeset
lhs commit   								 * commit files
lhs log										 * show all the history information
echo world > Test.txt 
lhs add Test.txt							 * add Test into current changeset
lhs commit   								 * commit files
lhs diff 0 1 Text.txt 				         * show the difference of Text.txt under two visions
lhs delete Test.txt							 * delete Test from current changeset
lhs commit 									 * commit files
lhs heads									 * show the changeset who don't have children
lhs cat Test.txt 0							 * show the content of Text.txt under revision 0
lhs cat Test.txt 1							 * show the content of Text.txt under revision 1
											 * make sure your enter the right revision number and file name
lhs stat									 * show status of files
lhs clone "/Users/lanfengxiang/desktop/new"  * clone the current repository to the given path
lhs clone "/Users/lanfengxiang/desktop/new"  * it already have a repository so will show the alert message
lhs merge "/Users/lanfengxiang/desktop/new"  * merge the given repository into current repository 
											 * because these are same, only show "Begin merge changeset"
lhs checkout 0								 * check out to revision 0

CAUTIONS:
1. MAKE SURE YOU ENTER THE RIGHT FILE NAME.
2. MAKE SURE YOUR COMPUTER HAD ALREADY INSTALL THE RUBY.
3. WHEN YOU ENTER THE VISION NUMBER, MAKE SURE IT EXITS
4. WHEN YOU ENTER THE VISION NUMBER AND FILENAME, MAKE SURE UNDER THIS VISION NUMBER, YOU DID SOME OPERATION OF THIS FILE
5. MAKE SURE YOU ENTER THE RIGHT DIRECTORY NAME








