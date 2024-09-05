FROM node:16-alpine AS builder

WORKDIR /app

COPY    package*.json   ./

RUN     yarn    install

COPY    .   .

RUN yarn build



############################################
FROM node:16-alpine
WORKDIR /app

COPY    --from=builder  /app/dist   /app

COPY    .env.local  .

EXPOSE  8080

CMD ["yarn", "server:dev"]


# docker build -t coffeeshop-backend .
# docker run -p 8080:8080 --env-file .env.local coffeeshop-backend
