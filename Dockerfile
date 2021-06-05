FROM node:10
WORKDIR usr/src/app
COPY package*.json ./
RUN npm install
# Copy local to container
COPY . .
# Build production
RUN npm run build:ssr
CMD ["npm", "run", "serve:ssr"]