FROM nginx:alpine

COPY dave-portfolio-site/ /usr/share/nginx/html

EXPOSE 80
