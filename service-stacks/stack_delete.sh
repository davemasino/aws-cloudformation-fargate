#!/bin/bash

profile=$1

for i in {1..100} 
do 
	aws --profile $profile cloudformation delete-stack --stack-name ecs-airflow-test-$i &
	sleep 2
done
