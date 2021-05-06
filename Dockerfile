FROM nginx:1.13.7-alpine
# Create a new directory
RUN mkdir -p /app

# Change directory so that our commands run inside this new directory
WORKDIR /app

# Create image based on the official nginx - Alpine image
# FROM nginx:1.13.7-alpine

# COPY --from=node /app/build /usr/share/nginx/html
# nginx.conf to configure nginx because of react routing
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

