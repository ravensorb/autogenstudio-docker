# AutogenStudio Docker Container

This repository contains the Docker setup for running AutogenStudio.

## Prerequisites

- Docker Compose

## Getting Started

1. Clone the repository (or just download a copy of the compose file):

    ```sh
    git clone https://github.com/yourusername/autogen-docker.git
    cd autogen-docker
    ```

2. Create a [.env](http://_vscodecontentref_/0) file in the root directory and add the necessary environment variables.

3. Build and run the container using Docker Compose:

    ```sh
    docker compose up --build
    ```

4. Access the application:

    Open your web browser and go to `http://localhost:8180`.

## Configuration

- **Ports**: The application is exposed on port `8180` on the host machine and mapped to port `80` in the container.
- **Volumes**: The /config directory on the host machine is mounted to /config in the container.

## Stopping the Container

To stop the container, run:

```sh
docker compose down
```