FROM farmsmart/gcp-firebase

# The firebase emulators require java

RUN apt-get update && apt-get install -y openjdk-8-jdk-headless

RUN firebase setup:emulators:firestore
RUN firebase serve --only firestore &