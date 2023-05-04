# not working in v18.16.0 
FROM node:18.15.0

WORKDIR /app

RUN apt-get update && apt-get install default-jre-headless -y
RUN npm install -g firebase-tools

EXPOSE 9099 5001 9000 8080 9199 5000

CMD ["firebase", "emulators:start"]
