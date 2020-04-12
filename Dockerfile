FROM node:12-stretch AS FIRST_STAGE
WORKDIR /code/
COPY package*.json /code/
RUN npm ci --only=production
COPY . /code/
RUN npm run build 


# stage two
FROM ubuntu:18.04 AS SECOND_STAGE
COPY --from=FIRST_STAGE /code/build /minified/