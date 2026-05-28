# Use a lightweight Nginx image to serve static files
FROM nginx:alpine

# Copy all static web files into the default Nginx public directory
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY app.js /usr/share/nginx/html/
COPY joel.jpg /usr/share/nginx/html/

# Expose port 80 to the Docker network
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
