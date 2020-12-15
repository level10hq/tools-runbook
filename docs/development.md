## The Dockerized Development Environment

--8<-- "docs/abbreviations.md"


There are many reasons and variations in using a development environment based on docker (and docker-compose). 
The main reason is to standardize and ease the usage of needed tooling in the development environment.  

The development lifecycle employs tools for varying functions.  

To name a few:
 
 * An interactive development and testing environment such as VSCode
 * The coding frameworks such as Ruby On Rails and Nodejs
 * Compilation and transpilation tools such as webpack dev server
 * Data persistence engines and access such as Postgres and PgAdmin
 * Continuous integration and deployment scripts
 * The documentation tool
 * Release/deployment automation 


Although we use docker extensively for instantiating needed services and tools, we install the IDE and other tools such as Cypress natively to get around some sticky scenarios. 


