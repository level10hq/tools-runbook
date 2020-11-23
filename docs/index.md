<img src="level10.png" width="200" />

--8<-- "docs/abbreviations.md"

# Welcome to Level10 Tools Runbook
Level10 Tools, also known as *Product Team*, is a web application based on principles from EOS to assist in shaping, planning, coordinating, and developing software products. 


## Getting Started


??? warning inline end "master.key file"
    you'll need the master key shared through LastPass 

    ```
    touch config/master.key
    ```
    then copy master.key from LastPass to file.


## Make Commands

* `make build` - Build development container, this will take some time.
* `make run` - Start the live-reloading server, postgres database, and web application through [docker-compose.yml](docker-compose.yml)
* `make setup` - Create database(s) if they don't exist
* `make migrate` -  Migrate database(s)


## Documentation layout

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.