
# Build the app #

FROM nginx:16-alpine AS builder
WORKDIR /usr/local/app
COPY ./ /usr/local/app/
RUN npm install
RUN npm run build --prod

COPY --from=node /usr/local/app/dist/crudtuto-Front /usr/share/nginx/html

EXPOSE 80

# When the container starts, replace the env.js with values from environment variables
#CMD ["/bin/sh",  "-c",  "envsubst < /usr/share/nginx/html/assets/env.template.js > /usr/share/nginx/html/assets/env.js && exec nginx -g 'daemon off;'"]
