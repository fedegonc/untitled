# Use a lightweight Flutter image to build the web application
FROM google/flutter AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy the entire project into the container
COPY . .

# Enable Flutter Web
RUN flutter config --enable-web

# Get dependencies and build the Flutter Web application
RUN flutter pub get
RUN flutter build web

# Use a lightweight Nginx image to serve the Flutter Web application
FROM nginx:alpine

# Copy the built Flutter Web files to the Nginx html directory
COPY --from=builder /app/build/web /usr/share/nginx/html

# Expose port 80 to serve the application
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
