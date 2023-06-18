#FROM node:18-alpine as build
#WORKDIR /app
#COPY ./gui/package*.json ./
#RUN npm install
#COPY ./react .
#RUN npm run build

FROM nginx:stable-alpine3.17-slim
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /usr/share/share/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
