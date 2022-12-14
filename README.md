# Steps to Dockerize the App

Frontend Used: https://github.com/gothinkster/react-redux-realworld-example-app.git <br />
Backend Used: https://github.com/gothinkster/django-realworld-example-app.git

#### Step 1: Clone the front end app.
![Pic1](https://user-images.githubusercontent.com/110366380/182070518-992031a3-8fa5-4d96-9b61-79abf4d5fe55.png)
#### Step 2: Create a Docker File (Dockerfile) in the root folder of the project.
#### Step 3: Add a .dockerignore file.
node_modules should be added to .dockerignore. The Docker image size will be huge if this step is ignored.
#### Step 4: Create a docker image
`docker build -t react-image .`
#### Step 5: Create a container from the `react-image` created in Step 4. <br />
`docker run -d -p 8092:4100 --name react-app react-image` <br />
-d for detach mode. The process runs in background. <br />
-p is to specify the port. This frontend app runs on port 4100 and we have specified port 8092 for our container. <br />

The command runs successfully, and the docker container can be accessed through localhost port 8092 `http://127.0.0.1:8092/`.

![image](https://user-images.githubusercontent.com/110366380/182075567-74d0343e-cad2-4b59-a328-becf4eb0fd6e.png)


#### The application uses: <br />Live API server `https://conduit.productionready.io/api` <br />github: `github.com/gothinkster/realworld/tree/main/api`

##### Note: We can set up another container for the backend by following the steps from 1 to 5. To Run a container we use:<br /> 
`docker run -d -p 8099:8000 --name <container name> realworldio/django-drf` <br />
##### We also have to update the API url in the React app to match the localhost port for the backend Django app.

### Using Docker Compose to Setup Local Backend.
Instead of manually setting up a backend server, We use Docker Compose to set up the link between two containers instead of manually running various containers.

#### Step 6: The image for the realworldio django backend app is available on the docker hub.
`docker pull realworldio/django-drf` <br />
we can also link this image directly in the docker compose file, so this step is optional.

#### Step 7: Create a `docker-compose.yml` file.

#### Step 8: Update the API URL for the app
In `src/agent.js`, we have to change `API_ROOT` to the local host URL: `http://localhost:8199/api`. `Port 8199` is the port we specified to access the backend.

#### Step 9: Build and Run the Containers
`docker-compose up -d` <br />

We can check that both the containers are running, using `docker ps` command:

![image](https://user-images.githubusercontent.com/110366380/182098540-a9685bac-1a7f-4994-b23e-edc54f076795.png)


#### Step 10: Adding a User

The backend app doesn't have any user yet, we can create one by accessing the container bash interface: `docker exec -it realworld-react_backend_1 bash`

##### To add the user: Use `python manage.py createsuperuser`

![image](https://user-images.githubusercontent.com/110366380/182103632-e6b3922c-d462-4249-a240-fb7b134090e2.png)


