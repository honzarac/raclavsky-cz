FROM node:18 as build

COPY . /app
WORKDIR /app

RUN npm install
RUN npm run build

FROM nginx:1.20

COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80
