FROM node:16-alpine     AS builder

WORKDIR /app

COPY    package*.json   ./

RUN     yarn    install

COPY    .   .

RUN yarn build



############################################
FROM nginx:alpine

COPY    --from=builder      /app/dist   /usr/share/nginx/html

# Copy the main Nginx configuration file
COPY    nginx.conf          /etc/nginx/nginx.conf

# Copy the custom Nginx site configuration
COPY    site-nginx.conf     /etc/nginx/conf.d/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]


# docker build -t coffeeshop-frontend .
# docker run -p 8080:8080 --env-file .env.local coffeeshop-frontend
