#!/bin/bash
#Example: ./BashParallelism.sh somefile.txt 20
#This will run some commands given in the file simultaneously the number of lines specified in the input parameter


while read line           
do
	parallelism=$2 #Input number of threads from user
	
	eval $line & #<-This ampersand Parallelizes the process eval $someComplexLinuxCommand
	
	#Parallelize malicious conversation filter
	NPROC=$(($NPROC+1))
	if [ "$NPROC" -ge "$parallelism" ]; then
		echo "Waiting for $parallelism tshark processes to finish..."
		wait
		NPROC=0
	fi #Done parallelism 
done < $1 #inputFile.txt
