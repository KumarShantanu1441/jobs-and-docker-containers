FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.ttj9tfw.mongodb.net
ENV MONGODB_USERNAME kumarshantanu1441
ENV MONGODB_PASSWORD 7eNyqVZrQAxIjSCr

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]