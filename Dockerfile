FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y gcc-multilib g++-multilib
RUN apt-get install -y texlive-latex-recommended  texlive-fonts-recommended
RUN apt-get install -y ghostscript
RUN apt-get install -y libcgi-session-perl
RUN mkdir /code
WORKDIR /code
#COPY start.sh /code

#Create a new group
RUN groupadd -r prof
#Create a new user for the group
RUN useradd -m -r -g prof prof
RUN chown -R prof:prof /code
#switch to the new user account
