FROM jenkins/ssh-agent
RUN apt-get update &&\
    groupadd docker -g 998 &&\
    apt-get install -qy --no-install-recommends git ca-certificates curl &&\
    curl -sSL https://get.docker.com/ | sh &&\
    usermod -aG docker jenkins &&\
    apt-get clean -y && rm -rf /var/lib/apt/lists/*
