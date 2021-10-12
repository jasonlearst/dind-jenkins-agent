FROM jenkins/ssh-agent
RUN apt-get update &&\
    apt-get install -qy --no-install-recommends gosu git ca-certificates curl &&\
    curl -sSL https://get.docker.com/ | sh &&\
    apt-get clean -y && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]