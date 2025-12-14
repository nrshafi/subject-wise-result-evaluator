#!/bin/bash

pass=0
fail=0

read -p "Enter Student ID: " sid
read -p "Enter marks of Subject 1: " m1
read -p "Enter marks of Subject 2: " m2
read -p "Enter marks of Subject 3: " m3

for mark in $m1 $m2 $m3
do
    if [ $mark -lt 40 ]
    then
        fail=$((fail+1))
    else
        pass=$((pass+1))
    fi
done

total=$((m1 + m2 + m3))
percentage=$((total * 100 / 300))

if [ $percentage -ge 80 ]
then
    grade="A+"
elif [ $percentage -ge 75 ]
then
    grade="A"
elif [ $percentage -ge 70 ]
then
    grade="A-"
elif [ $percentage -ge 65 ]
then
    grade="B+"
elif [ $percentage -ge 60 ]
then
    grade="B"
elif [ $percentage -ge 55 ]
then
    grade="B-"
elif [ $percentage -ge 50 ]
then
    grade="C+"
elif [ $percentage -ge 45 ]
then
    grade="C"
elif [ $percentage -ge 40 ]
then
    grade="D"
else
    grade="F"
fi

echo "----------------------------"
echo "Student ID      : $sid"
echo "Total Marks     : $total / 300"
echo "Percentage      : $percentage%"
echo "Grade           : $grade"
echo "----------------------------"
echo "Subjects Passed : $pass"
echo "Subjects Failed : $fail"
