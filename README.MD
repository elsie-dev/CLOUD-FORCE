Deploying Containerized Application on AWS

Summary for this task [](https://drive.google.com/file/d/1BM4ztwi2p7oTxYsjE4_tJdk8FqDf5Lqe/view?usp=sharing)

## Prerequisties
- Python Understanding for the "my app"

- Docker installed on your computer

- AWS CLI installed

- AWS Account

## Running the flask app
```set FLASK_APP='app.py'
flask run -p 5000
```

## Dockerizing the flask app

### Running the Container
```
docker build -t app .
docker run -p 8888:5000 -t app
```
### Creating a user in ECS
Enabling the user to have **AmazonEC2ContainerRegistryFullAccess** permissions

```aws configure ```

### Creating Elastic Container Service Repository

To upload Docker image to the repository

```
aws ecr get-login-password --region YOUR REGION | docker login --username AWS --password-stdin YOUR ID.dkr.ecr.YOUR REGION.amazonaws.com
```

```
docker tag test:latest YOUR ID.dkr.ecr.YOUR REGION.amazonaws.com/test:latest
docker push YOUR ID.dkr.ecr.YOUR REGION.amazonaws.com/test:latest
```

## Creating ECS cluster from AWS console

## Creating task definitions
From the cluster creation,you can create a Task definition.

Testing deployed application
