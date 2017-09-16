FROM node:8

WORKDIR /app

COPY package.json /app
RUN yarn install
COPY . /app/
RUN yarn run build

FROM nginx:alpine
COPY --from=0 /app/build/ /usr/share/nginx/html/
