FROM ubuntu:24.10

RUN apt -y update
RUN apt-get -y install jq curl zip unzip

# Install AWS Cli 2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install && rm -rf awscliv2.zip
RUN aws --version

CMD ["sh", "-c", "tail -f /dev/null"]
