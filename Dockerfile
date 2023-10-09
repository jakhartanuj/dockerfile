FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget

RUN wget -O install.sh http://www.aapanel.com/script/install-ubuntu_6.0_en.sh

RUN chmod +x install.sh

RUN sudo bash install.sh aapanel

EXPOSE 8888

CMD ["nginx"]
