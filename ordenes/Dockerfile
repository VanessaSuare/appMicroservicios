FROM node

WORKDIR /ordenes

COPY src ./src

RUN npm init --yes
RUN npm install express morgan mysql mysql2 axios

EXPOSE 3003

CMD node src/index.js
