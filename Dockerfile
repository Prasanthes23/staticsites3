# Base Apache image
FROM httpd:alpine

# Remove default content
RUN rm -rf /usr/local/apache2/htdocs/*

# Copy your static site files
COPY . /usr/local/apache2/htdocs/

# Set ServerName to suppress warning
RUN echo "ServerName localhost" >> /usr/local/apache2/conf/httpd.conf

# Expose standard HTTP port
EXPOSE 80

# Run Apache in foreground
CMD ["httpd", "-D", "FOREGROUND"]
