A simple Docker image for portable Next.js development

Clone the repository and build the Dockerfile:
docker build -t devenv .

Run the container with  bash prompt in /home directory:
docker-compose run --service-ports devenv bash

Open Atom inside the folder for development on your local machine

To run the server (in the containers bash shell):
npm run dev

On your local machine to launch the frontend:
localhost:3000
