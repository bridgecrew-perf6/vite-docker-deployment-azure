FROM node:18-alpine3.15 as build

WORKDIR /app

COPY package*.json ./ 

RUN npm i

COPY . .

RUN npm run build


FROM nginx:1.21.6-alpine
COPY --from=build /app/dist /usr/share/nginx/html