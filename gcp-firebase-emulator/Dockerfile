FROM farmsmart/gcp-firebase

# The firebase emulators require java

RUN echo oracle-java12-installer shared/accepted-oracle-license-v1-2 select true | \
    /usr/bin/debconf-set-selections

RUN echo oracle-java12-installer shared/accepted-oracle-licence-v1-2 boolean true | \
    /usr/bin/debconf-set-selections

RUN apt install dirmngr \
    && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EA8CACC073C3DB2A \
    && echo "deb http://ppa.launchpad.net/linuxuprising/java/ubuntu bionic main" | tee /etc/apt/sources.list.d/linuxuprising-java.list \
    && apt update \
    && apt install -y oracle-java12-installer && apt install -y oracle-java12-set-default

RUN firebase setup:emulators:firestore
RUN firebase serve --only firestore &