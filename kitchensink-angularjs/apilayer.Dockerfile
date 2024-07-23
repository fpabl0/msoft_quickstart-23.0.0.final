FROM httpd:2.4

# add simple title with a button
RUN echo " \
  <html> \
  <head> \
  <title>API Layer</title> \
  <link rel=\"shortcut icon\" href=\"favicon.ico\" type=\"image/x-icon\"> \
  <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\"> \
  <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz\" crossorigin=\"anonymous\"></script> \
  </head> \
  <body> \
  <div style=\"display:flex;justify-content:center;align-items:center;flex-direction:column;padding: 40px;\"> \
  <div class=\"alert alert-success\" role=\"alert\" style=\"width:100%;\"> \
  API Layer running! \
  </div> \
  <a href=\"/kitchensink-angularjs\" class=\"btn btn-dark\" style=\"width:100%;\"> \
  Go to kitchensink app \
  </a> \
  </div> \
  </body> \
  </html> \
  " > /usr/local/apache2/htdocs/index.html

# set a favicon
COPY ./apilayer-favicon.ico /usr/local/apache2/htdocs/favicon.ico

# configure this server to run as a proxy for http://srvwildfly:8080/kitchensink-angularjs
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf

# expose default apache server port
EXPOSE 80