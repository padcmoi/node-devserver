# Node Development Server

## Short Description
This is an environment for developing any Node.js application.


## Why?
When you want to develop or fix a Node.js app, it may only work with a specific version of Node.js. Instead of changing the version on your computer, you can do it through this Docker container. Simply choose the Node.js version in the `.env` file.


## Installation
1. Copy the `docker/.env.example` file to `.env` and modify it as needed, such as setting the desired Node.js version.
2. In the `app` folder, the content is an example. Place your project inside.
3. Use the following Docker commands:
    - `sudo docker compose -f docker/compose.yml build`: To set up your environment
    - `sudo docker compose -f docker/compose.yml up -d`: To start your container
    - `sudo docker compose -f docker/compose.yml down`: To stop your container
4. In the `docker/` folder, you have 2 shell scripts (`exec` and `nodemon`):
    - `exec`: Allows you to execute any command on your container, for example, `docker/exec pnpm install`.
    - `nodemon`: Allows you to use nodemon on the container, for example with the example files `docker/nodemon app`.



And that's it, very simple.


## Contact me

- Julien Jean
- France
- [By discord](https://discord.gg/257rUb9)