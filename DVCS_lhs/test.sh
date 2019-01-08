#!/usr/bin/env bash
rm *.txt
rm -r .hg
echo "hello foo" > foo.txt
echo "hello bar" > bar.txt
./lhs init
# test add
./lhs add foo.txt bar.txt
./lhs stat
# test commit
./lhs commit
# test delete
./lhs delete foo.txt
./lhs commit
# update file and commit
echo "world" >> foo.txt
./lhs add foo.txt
./lhs commit
# test log
./lhs log
# test heads
./lhs heads
# test merge
./lhs merge ../mercurial_other
./lhs merge ../mercurial_other

./lhs heads
./lhs clone ../clone_dir
./lhs checkout 0
./lhs heads
./lhs stat


