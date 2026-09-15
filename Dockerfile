FROM nginx:1.27-alpine

# Custom nginx site config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Static site into nginx html root
COPY index.html styles.css script.js /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
