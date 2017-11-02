# GPA Calculator

function printPrompt() {
	echo
	echo
	echo "College GPA Calculator"
	echo "Enter the course name, number of units, and grade."
	echo "Enter \"-1\" to stop"
	echo
	return
}

function getNumCourses() {
	echo "Enter the number of courses to be grades"
	read numCourses
	return $((numcourses))
}

function calcGPA() {
	totalUnitsPossible=0
	totalUnitsRecieved=0

	read -p "Enter number of courses: " numCourses

	for((i=0;i<numCourses;i++));  do
		read -p "Enter course name: " courseName
		read -p "Enter course units: " courseUnits
		read -p "Enter letter grade recieved: " letterGrade

		if (( (("$letterGrade"  == "A")) || (("$letterGrade"  == "a" )) )); then
			unitsEarned=$((courseUnits * 4))
		fi

		if (( (("$letterGrade"  == "B")) || (("$letterGrade"  == "b" )) )); then
			unitsEarned=$((courseUnits * 3))
		fi

		if (( (("$letterGrade"  == "C")) || (("$letterGrade"  == "c" )) )); then
			unitsEarned=$((courseUnits * 2))
		fi

		if (( (("$letterGrade"  == "D")) || (("$letterGrade"  == "d" )) )); then
			unitsEarned=$((courseUnits * 1))
		fi

		if (( (("$letterGrade"  == "F")) || (("$letterGrade"  == "f" )) )); then
			unitsEarned=$((courseUnits * 0))
		fi

		if (( (("$letterGrade"  == "D")) || (("$letterGrade"  == "d" )) )); then
			unitsEarned=$((courseUnits * 0))
		fi

		let "totalUnitsPossible=totalUnitsPossible+courseUnits"
		let "totalUnitsRecieved+=unitsEarned"

	done

	GPA=$((totalUnitsRecieved / totalUnitsPossible))

	printf "%.3f\n" "GPA: " $GPA
}

function main() {
	printPrompt
	calcGPA
	echo "program finished"
	return
}

main
