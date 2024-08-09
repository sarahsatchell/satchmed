# Use an official Nginx runtime as a parent image
FROM nginx:1.21.1-alpine

# Remove default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# From 'builder' stage copy over the artifacts in dist folder to default nginx public folder
COPY static /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]