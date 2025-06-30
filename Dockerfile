FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.ntrwp.mongodb.net
ENV MONGODB_USERNAME kumarshantanu1441
ENV MONGODB_PASSWORD MzVB1YnGVcdy7C9l

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]