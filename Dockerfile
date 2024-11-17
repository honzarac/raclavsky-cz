FROM node:18 as build

COPY . /app
WORKDIR /app

RUN npm install
RUN npx gulp build

FROM nginx:alpine

COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80
