FROM nginx:1.20

COPY ./dist /usr/share/nginx/html

EXPOSE 80
