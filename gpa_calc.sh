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

function main() {
	printPrompt

	totalUnitsPossible=0
	totalUnitsRecieved=0
	
	read -p "Enter number of courses: " numCourses

	for((i=0;i<numCourses;i++));  do
		read -p "Enter course name: " courseName
		read -p "Enter course units: " courseUnits
		read -p "Enter letter grade recieved: " letterGrade

		totalUnitsPossible=$((totalUnitsPosible + $courseUnits))
		# ((totalPossibeUnits+=$courseUnits))
	done

	echo $totalUnitsPossible

echo "program finished"


	return
}

main

