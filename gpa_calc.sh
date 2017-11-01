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

function getGrade() {

}

function main() {
	printPrompt

	keepGrading=0
	totalUnitsPossible=0
	totalUnitsRecieved=0

	while [$keepGrading -eq 0]
	do
		echo "Enter course name."
		read $courseName		
		echo "Enter course units"
		read $courseUnits
		echo "Enter letter grade"
		read $letterGrade

		if [$courseName != -1]
			echo "Name: $courseName"	
			echo "Units: $courseUnits"
			echo "Grade: $letterGrade"
		else
			$keepGrading=1
		fi
	done


	return
}

main

