#!/bin/bash
#Example: ./BashParallelism.sh 20
#This will run some command given in the code the number of times specified in the input parameter


while read line           
do
	parallelism=$1 #Input number of threads from user
	
	eval $line & #<-This ampersand Parallelizes the process eval $someComplexLinuxCommand
	
	#Parallelize malicious conversation filter
	NPROC=$(($NPROC+1))
	if [ "$NPROC" -ge "$parallelism" ]; then
		echo "Waiting for $parallelism tshark processes to finish..."
		wait
		NPROC=0
	fi #Done parallelism 
done < inputFile.txt
