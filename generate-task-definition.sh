#!/bin/bash
# Create a JSON task definition file
cat <<EOF > task_definition.json
{
  "containerDefinitions": [
    {
      "essential": true,
      "image": "780718310965.dkr.ecr.eu-west-1.amazonaws.com/ftb-client:ftb-$CI_COMMIT_SHORT_SHA",
      "name": "ftb-client-container",
      "portMappings": [{"containerPort": 80}]
    }
  ],
  "networkMode": "awsvpc",
  "cpu": "256",
  "family": "ftb-client-task-definition",
  "taskRoleArn": "arn:aws:iam::780718310965:role/ftbClientECSTaskExecutionRole",
  "memory": "512",
  "requiresCompatibilities": ["FARGATE"]
}
EOF