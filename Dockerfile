FROM node:8 as build

WORKDIR /app

COPY package.json /app
RUN yarn install
COPY . /app/
RUN yarn run build

FROM nginx:alpine
COPY --from=build /app/dist/ /usr/share/nginx/html/
