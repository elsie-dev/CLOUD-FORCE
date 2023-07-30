Deploying Containerization of  Application on AWS

Summary for this task [](https://drive.google.com/file/d/1BM4ztwi2p7oTxYsjE4_tJdk8FqDf5Lqe/view?usp=sharing)

## Prerequisties
- Flask Application

- Docker installed

- AWS CLI installed

- AWS Account with Secret and Access Keys

## Running the flask app
To run the flask application:

```
set FLASK_APP='app.py'
flask run -p 5000
```

## Dockerizing the flask app
Creating a  Dockerfile for the flask application

### Running the Container
Once the dockerfile is ready run:

```
docker build -t app .
docker run -p 8888:5000 -t app
```
### Creating a user in ECS
Enabling the user to have **AmazonEC2ContainerRegistryFullAccess** permissions from the AWS Cosnole

```aws configure ```

### Creating Elastic Container Service Repository

To upload Docker image to the repository,run:

```
aws ecr get-login-password --region YOUR REGION | docker login --username AWS --password-stdin YOUR ID.dkr.ecr.YOUR REGION.amazonaws.com
```

```
docker tag test:latest YOUR ID.dkr.ecr.YOUR REGION.amazonaws.com/test:latest
docker push YOUR ID.dkr.ecr.YOUR REGION.amazonaws.com/test:latest
```

## Creating ECS cluster from AWS console
![ECR Created in the console]()

## Creating task definitions
From the cluster creation,you can create a Task definition.

![Task definition created in the console]()

## Testing deployed application
