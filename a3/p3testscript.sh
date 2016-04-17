#!/bin/bash

echo "Pre-script Info"
echo "PID: $$"

./smallsh <<___EOF___
echo
echo BEGINNING TEST SCRIPT - MAX 150 POINTS (10 more points for comments)
echo
echo
echo --------------------
echo ls (10 points for returning dir contents)
ls
echo
echo
echo --------------------
echo ls out junk
ls > junk
echo
echo
echo --------------------
echo cat junk (20 points for correctly returning contents of junk)
cat junk
echo
echo
echo --------------------
echo wc in junk (20 points for returning correct numbers from wc)
wc < junk
echo
echo
echo --------------------
echo test -f badfile (10 points for returning error value of 1)
test -f badfile
status
echo
echo
echo --------------------
echo wc in badfile (10 points for returning text error)
wc < badfile
echo
echo
echo --------------------
echo badfile (10 points for returning text error)
badfile
echo
echo
echo --------------------
echo sleep 100 background (10 points for returning process ID of sleeper)
sleep 100 &
echo
echo
echo --------------------
echo pkill -signal SIGTERM sleep (10 points for pid of killed process, 10 points for signal)
echo (Ignore message about Operation Not Permitted)
pkill sleep
echo
echo
echo --------------------
echo sleep 1 background (10 pts for pid of bg ps when done, 10 for exit value)
sleep 1 &
sleep 1
echo
echo
echo --------------------
echo pwd
pwd
echo
echo
echo --------------------
echo cd 
cd
echo
echo
echo --------------------
echo pwd (10 points for being in the HOME dir)
pwd
echo
echo
echo --------------------
echo mkdir testdir$$
mkdir testdir$$
echo
echo
echo --------------------
echo cd testdir$$
cd testdir$$
echo
echo
echo --------------------
echo pwd (10 points for being in the newly created dir)
pwd
exit
___EOF___
