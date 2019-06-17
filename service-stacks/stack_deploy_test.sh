#!/bin/bash

profile=$1

for i in {1..100} 
do 
	aws --profile $profile cloudformation deploy --stack-name ecs-airflow-test-$i --template-file \
		./public-subnet-public-loadbalancer.yml &
	sleep 2
done
