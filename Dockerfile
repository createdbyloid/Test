FROM nginx

COPY . /usr/share/nginx/html

EXPOSE 80

WORKDIR /usr/share/nginx/html