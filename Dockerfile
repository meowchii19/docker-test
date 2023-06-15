FROM node:17-alpine
RUN npm install -g nodemon
# WORKDIR /usr/src/app
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
CMD ["npm", "run", "dev"]
