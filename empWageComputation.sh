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

function getWorkingHours() 
{
case $1 in
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
}

function getEmpWage(){
	echo $(($1*$empRatePerHr))
}
while [[ $totalEmpHrs -lt $maxEmpHours && $totalWorkingDays -lt $numWorkingDays ]]
do
        ((totalWorkingDays++))
        getWorkingHours $((RANDOM%3))
	totalEmpHrs=$(( $totalEmpHrs + $empHrs ))
	dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
	echo "Daily Wage: "${dailyWages[$totalWorkingDays]}
done

totalSalary="$( getEmpWage $totalEmpHrs )"
echo "Total Wage: "$totalSalary
