#!/bin/bash -x

echo "Welcome Employee"

#Employee attendance
Attendance(){
	attendance=$((RANDOM % 2))
	if [ $attendance -eq 1 ]
	then
		echo "Employee is Present"
	else
		echo "Employee is Absent"
	fi
}
Attendance

#Employee Wage
HOUR=8
WAGE=20
DAILY_WAGE=0
Dailywage(){
	DAILY_WAGE=$(($WAGE * $HOUR))
	echo "Daily Employee Wage is: $DAILY_WAGE"
}
Dailywage

#Employee part time wage
PART_TIME=0
Parttimewage(){
	TIME=$(($HOUR / 2))
	PART_TIME=$(($TIME * $WAGE))
	echo "Part time Employee Wage is: $PART_TIME"
}
Parttimewage
