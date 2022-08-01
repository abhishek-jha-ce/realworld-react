# Steps to Dockerize the App
#### Step 1: Clone the front end app.
![Pic1](https://user-images.githubusercontent.com/110366380/182070518-992031a3-8fa5-4d96-9b61-79abf4d5fe55.png)
#### Step 2: Create a Docker File (Dockerfile) in the root folder of the project.
#### Step 3: Add a .dockerignore file.
node_modules should be added to .dockerignore. The Docker image size will be huge if this step is ignored.
#### Step 4: Create a docker image
`docker build -t react-image .`
 

# Frontend Cloned from:

# ![React + Redux Example App](project-logo.png)

[![RealWorld Frontend](https://img.shields.io/badge/realworld-frontend-%23783578.svg)](http://realworld.io)

> ### React + Redux codebase containing real world examples (CRUD, auth, advanced patterns, etc) that adheres to the [RealWorld](https://github.com/gothinkster/realworld-example-apps) spec and API.

<a href="https://stackblitz.com/edit/react-redux-realworld" target="_blank"><img width="187" src="https://github.com/gothinkster/realworld/blob/master/media/edit_on_blitz.png?raw=true" /></a>&nbsp;&nbsp;<a href="https://thinkster.io/tutorials/build-a-real-world-react-redux-application" target="_blank"><img width="384" src="https://raw.githubusercontent.com/gothinkster/realworld/master/media/learn-btn-hr.png" /></a>

### [Demo](https://react-redux.realworld.io)&nbsp;&nbsp;&nbsp;&nbsp;[RealWorld](https://github.com/gothinkster/realworld)

Originally created for this [GH issue](https://github.com/reactjs/redux/issues/1353). The codebase is now feature complete; please submit bug fixes via pull requests & feedback via issues.

We also have notes in [**our wiki**](https://github.com/gothinkster/react-redux-realworld-example-app/wiki) about how the various patterns used in this codebase and how they work (thanks [@thejmazz](https://github.com/thejmazz)!)

