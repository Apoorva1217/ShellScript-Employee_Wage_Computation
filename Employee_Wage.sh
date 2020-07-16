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

#Switch case
echo -e "1.Attendance\n2.Daily Wage\n3.Part Time Wage\n4.Exit"
read CHOICE
case $CHOICE in
	"1")Attendance;;
	"2")Dailywage;;
	"3")Parttimewage;;
	"4")exit;;
	"*")echo "Invalid choice"
esac

#Calculating Wage for Month
MONTH_WAGE=0
Monthwage(){
	DAY=20
	MONTH_WAGE=$(($DAILY_WAGE * $DAY))
	echo "Wage of month is: $MONTH_WAGE"
}
Monthwage

#Calculate wage till 100 hours or 20 days for month
HOURS=0
DAYS=0
WAGES=20
TOTAL=0
while [ $HOURS -lt 100 ] && [ $HOURS -lt 20 ]
do
	FULL_DAY=$((RANDOM % 2))
	if [ $FULL_DAY -eq 1 ]
	then
		HOURS=$(($HOUR + $HOURS))
		TOTAL=$(($HOURS * $WAGES))
	else
		HOURS=$(($(($HOUR / 2)) + $HOURS))
		TOTAL=$(($HOURS * $WAGES))
	fi
done
if [ $HOURS -eq 100 ]
then
	echo "Total:"$TOTAL
else
	echo "Month wage:"$MONTH_WAGE
fi

#Get the Working hours
echo "Monthly Wage hours: $HOURS"
echo "Part time wage hours: $(($HOURS / 2))"
