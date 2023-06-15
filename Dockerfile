#FROM node:18-alpine as build
#WORKDIR /app
#COPY ./gui/package*.json ./
#RUN npm install
#COPY ./react .
#RUN npm run build

FROM nginx:1.18.0-alpine
#COPY --from=build /app/build /usr/share/nginx/html
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./1.zip /usr/share/soft/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
