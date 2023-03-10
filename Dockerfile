FROM nginx:latest
RUN rm -f /usr/share/nginx/html/index.html
COPY . /opt
WORKDIR /opt
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


