Django Docker Example
=====================

1. Install the requirements.

    - [Boot2docker](http://boot2docker.io/)
    - [Docker Compose](https://docs.docker.com/compose/install/)
    - [Docker Machine](https://docs.docker.com/machine/)

2. Clone the source code.

        $ cd ~/
        $ git clone https://github.com/epicserve/django-docker-example.git
        $ cd django-docker-example

3. Start boot2docker.

        $ boot2docker start

4. Create a docker machine that will hold all your containers and images.

        $ docker-machine create -d virtualbox django-docker
        $ eval "$(docker-machine env django-docker)"

5. Start the django dev server.

        $ make start

6. Open a new terminal tab and do the following to open the site in your browser.
        
        $ cd ~/django-docker-example
        $ eval "$(docker-machine env django-docker)"
        $ make open_browser

7. When you're done for the day, shut down your docker machine so it's not running in the background.

        $ docker-machine stop django-docker
