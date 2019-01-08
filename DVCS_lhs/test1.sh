rm *.txt
rm -r .hg
echo "hello foo" > foo.txt
echo "hello bar" > bar.txt
./lhs.rb init
./lhs.rb add foo.txt bar.txt
./lhs.rb commit
echo "world" >> foo.txt
./lhs.rb add foo.txt
./lhs.rb commit
./lhs.rb add foo.txt
./lhs.rb commit
./lhs.rb log
./lhs.rb heads
