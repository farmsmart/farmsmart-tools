FROM python:3.7-stretch

# Installs NodeJS
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
       && apt-get install -y nodejs

RUN apt-get update && apt-get install -y openjdk-8-jdk-headless

WORKDIR /farmsmart

ENV HOME /farmsmart
ENV SONAR_SCANNER_VERSION 3.3.0.1492
ENV SONAR_SCANNER_HOME /farmsmart/.sonar/sonar-scanner-$SONAR_SCANNER_VERSION

RUN rm -rf $SONAR_SCANNER_HOME \
 && mkdir -p $SONAR_SCANNER_HOME \
 && curl -sSLo $HOME/.sonar/sonar-scanner.zip http://repo1.maven.org/maven2/org/sonarsource/scanner/cli/sonar-scanner-cli/$SONAR_SCANNER_VERSION/sonar-scanner-cli-$SONAR_SCANNER_VERSION.zip \
 && unzip $HOME/.sonar/sonar-scanner.zip -d $HOME/.sonar/ \
 && rm $HOME/.sonar/sonar-scanner.zip 

ENV PATH $SONAR_SCANNER_HOME/bin:$PATH
ENV SONAR_SCANNER_OPTS "-server" 