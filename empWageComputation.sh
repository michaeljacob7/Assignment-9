#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"
isPresent=1
randomNumber=$((RANDOM%2))

#TO CHECK THE EMPLOYEE PRESENT AND ABSENT
if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi

#TO CHECK DAILY WAGE
isPartTime=1;
isFullTime=2;
empRatePerHr=100;
randomCheck=$((RANDOM%3));
if [ $isFullTime -eq $randomCheck ];
then
        empHrs=16;
elif [ $isPartTime -eq $randomCheck ];
then
        empHrs=8;
else
        empHrs=0;
fi
salary=$(($empHrs*$empRatePerHr));

