FROM docker
COPY --from=docker/buildx-bin:latest /buildx /usr/libexec/docker/cli-plugins/docker-buildx
RUN docker buildx version

FROM node:18-alpine
WORKDIR /application
COPY . .
RUN yarn install --production
CMD ["node", "./bin/www"]
EXPOSE 3000