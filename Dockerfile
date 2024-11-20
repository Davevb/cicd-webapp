FROM node:20.18.0-alpine3.20
WORKDIR /app
COPY package.json ./
COPY yarn.lock ./
RUN yarn install --frozen-lockfile
COPY . ./
ENV PORT=3000
EXPOSE $PORT
CMD [ "yarn", "start"]