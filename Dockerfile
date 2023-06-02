# Use an official Nginx runtime as the base image
FROM nginx

# Copy custom configuration file
COPY . .

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

