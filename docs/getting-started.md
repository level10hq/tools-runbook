## Getting Started
The recommended development environment utilizes docker-compose to build and execute containers supporting local development.  This allows development on any operating system that supports docker and maintains consistent versions of tools and services across local, testing, staging, and production environments.

### Prerequisites 
 
 * Code editor such as [VS Code](https://code.visualstudio.com/)
  
    ??? tip docker extension
        [docker extension](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) for vscode 
 
* Access to LastPass.  Download [here](https://www.lastpass.com/) and add as a Chrome extension.  Create a free account.
       
    ??? warning inline end "master.key file required"
        you'll need the master key shared through LastPass 

        ```
        touch config/master.key
        ```
        then copy master.key from LastPass to file.

* [docker](https://docs.docker.com/get-docker/), note docker-compose should be installed as well.
* Make (which is installed by default on Mac)

### Up and running
In five easy steps.  The development environment uses many services through a virtualized environment.  

Steps:

1.  Clone this repository 
    ```
    git clone https://github.com/level10hq/tools
    ```

2.  Execute the build command 
    ```bash
    make build
    ```
3.  Initialize the databases 
    ```
    make setup
    ``` 

    !!! warning 
        If databases already exist this will recreate them


4.  Update the databases
    ```
    make  migrate
    ``` 
   
5.  Execute the run command 
    ```
    make run
    ```
    
    
After successful execution the following containers will be available:

* **web**  :  Ruby on Rails server, http://localhost:3000
* **webpack** :  Webpack development server with hot reloading , http://localhost:3335
* **postgres**:  Postgres SQL database server, http://localhost:5421

??? tip Postgres access
    If you want to manage the Postgres database, we provide a command to spin up PGAdmin
    ```
    make pg-admin
    ```

     **pgadmin** :  Adminstrative tool for Postgres, http://locahost:7500

      * Email:  ```admin@test.com```
      * Password:  ```password```

!!! tip
    To find credentials defined for a docker container, consult the docker-compose.yml file.

Using docker-compose we bind to the current directy and create volumes for postgres data, Ruby gem cache, and node modules that are not bound locally.
 
*  **level10-tools_postgres_data**
*  **level10-tools_node_modules** 
*  **level10-tools_container_gems** 

Dropping databases is equivalent to deleting the  **level10-tools_postgres_data** volume and can be done using 

```
make drop
```

!!! Note 
    The volumes mentioned are not bound locally so you are free to load the node_modules locally, which we will need to for Cypress testing.
    In other words, the node_modules directory you see in on the host machine only applies to the host machine.  
    These are ignored through .dockerignore so they will never make it to the container instances.
