# Node Development Server

## Short Description
This is an environment for developing any Node.js application.


## Why?
When you want to develop or fix a Node.js app, it may only work with a specific version of Node.js. Instead of changing the version on your computer, you can do it through this Docker container. Simply choose the Node.js version in the `.env` file.


## Installation
1. Copy the `docker/.env.example` file to `.env` and modify it as needed, such as setting the desired Node.js version.
2. In the `app` folder, the content is an example. Place your project inside.
3. Use the following Docker commands:
    - `docker/create_env.sh`: To configure your environment and remove unnecessary files including folder .git
    - `docker/version`: To select a Node version, for example, `18`, `20`, or `22`
    - `docker/exec`: To execute a command in the container
    - `docker/log`: To get real-time logs
    - `docker/restart`: To rebuild and restart the container
    - `docker/start`: To build and start the container
    - `docker/stop`: To stop and remove the unused container
    - `docker/nodemon`: Allows you to use nodemon on the container, for example with the example files `docker/nodemon app`.

And that's it, very simple.


## Contact me

- Julien Jean
- France
- [By discord](https://discord.gg/257rUb9)