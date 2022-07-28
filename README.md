# Prefect 2.0 docker compose deployment (Mac and Linux)

Scripts to deploy Prefect 2.0 locally configured with Postgres, a docker agent, and Minio for flow storage


### Requirements
    * docker
    * docker-compose


### Steps

    * Clone this repo
    * Cd into the prefect-orion folder
    * Build docker image used by prefect server, agent and flow runner

    ```
    docker compose -f "docker-compose.yaml" up -d --build 
    ```

    * Create a flow run from the UI by creating a `Quick Run` from the Flows view


    * To stop the services run `./prefect.sh stop`
    * To reset your environment, run `./prefect.sh reset && ./prefect.sh start`. A fresh deployment will start up.


### Notes
    * If running in linux, you may need to run as root depending on docker permissions