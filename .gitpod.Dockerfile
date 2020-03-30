FROM gitpod/workspace-full
                    
USER gitpod

USER root
RUN sudo chown -R gitpod:gitpod /home/gitpod/.cache/heroku
RUN sudo apt-get update

RUN curl https://cli-assets.heroku.com/install-ubuntu.sh | sh

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
