# Use lightweight Apache image
FROM httpd:alpine

# Remove default Apache files
RUN rm -rf /usr/local/apache2/htdocs/*

# Copy your static app files
COPY . /usr/local/apache2/htdocs/

# Expose Apache port
EXPOSE 80

# Start Apache in the foreground
CMD ["httpd", "-D", "FOREGROUND"]
