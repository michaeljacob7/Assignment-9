#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"
isPresent=1
randomNumber=$((RANDOM%2))

if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi

isPartTime=1;
isFullTime=2;
empRatePerHr=100;
numWorkingDays=20;
totalWorkHours=0;
totalWorkingDays=0;
totalSalary=0;
maxEmpHours=100;

while [[ $totalEmpHrs -lt $maxEmpHours && $totalWorkingDays -lt $numWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$(($RANDOM%3));
case $empCheck in
  $isFullTime)
       empHrs=8
         ;;
  $isPartTime)
       empHrs=4
        ;;
  *)
    empHrs=0
        ;;
esac
totalEmpHrs=$(( $totalEmpHrs + $empHrs ));
done

totalSalary=$(($totalEmpHrs*$empRatePerHr))
