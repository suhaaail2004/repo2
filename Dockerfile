# Use Nginx as the base image
FROM nginx:stable-alpine AS base

# Maintainer label
LABEL maintainer="your-team@example.com"
LABEL description="Repo2 static website served via Nginx"

# Remove the default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy the entire project into the Nginx web root
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
