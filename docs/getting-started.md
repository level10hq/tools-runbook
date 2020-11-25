## Getting Started
The recommended development environment utilizes docker-compose to build and execute containers supporting local development.  This allows development on any operating system that supports docker and maintains consistent versions of tools and services across local, testing, staging, and production environments.

### Prerequisites 
 
 * Code editor such as [VS Code](https://code.visualstudio.com/)
  
    ??? tip docker extension
        [docker extension](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) for vscode 
 
* Access to LastPass
       
    ??? warning inline end "master.key file required"
        you'll need the master key shared through LastPass 

        ```
        touch config/master.key
        ```
        then copy master.key from LastPass to file.

* docker
* docker-compose

### Containers

* **web**  :  Ruby on Rails server, http://localhost:3000
* **webpack** :  Webpack development server with hot reloading , http://localhost:3335
* **postgres**:  Postgres SQL database server, http://localhost:5421

Using docker-compose we bind to the current directy and create volumes for postgres data * and node modules that are not bound locally.
 
*  **level10-tools_postgres_data**
*  **level10-tools_nodee_modules** 

Dropping databases is equivalent to deleting the  **level10-tools_postgres_data** volume and can be done using ```make drop```

```
make build 
```

