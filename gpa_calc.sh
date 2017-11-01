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
	return $((numcourses + 0))
}

function main() {
	printPrompt
	getNumCourses

	totalUnitsPossible=0
	totalUnitsRecieved=0

	while ($keepGrading -eq getNumCourses)
	do
		echo "Enter course name."
		read $courseName		
		echo "Enter course units"
		read $courseUnits
		echo "Enter letter grade"
		read $letterGrade
	done

	echo "program finished"

	return
}

main

