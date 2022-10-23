
# Build the app #

FROM nginx:1.23-alpine 

WORKDIR /usr/local/app
COPY ./ /usr/local/app/
COPY  /usr/local/app/dist/crudtuto-Front /usr/share/nginx/html
RUN npm install
RUN npm run build --prod
EXPOSE 80
# Run in NGINX #





# When the container starts, replace the env.js with values from environment variables
#CMD ["/bin/sh",  "-c",  "envsubst < /usr/share/nginx/html/assets/env.template.js > /usr/share/nginx/html/assets/env.js && exec nginx -g 'daemon off;'"]
