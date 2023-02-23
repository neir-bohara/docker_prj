FROM nginx
LABEL maintainer="mrniranjanbohara@gmail.com" 
RUN apt-get update && apt-get upgrade -y
 
COPY index.html /usr/share/nginx/html
COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf
 
EXPOSE 80
 
 CMD ["nginx", "-g", "daemon off;"]
