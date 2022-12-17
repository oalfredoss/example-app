FROM node:lts-bullseye-slim
COPY . .
RUN npm install
EXPOSE 8000
CMD npm start
