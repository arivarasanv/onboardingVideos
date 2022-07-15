ARG REGISTRY
FROM ${REGISTRY}/nginx:latest
COPY ./dist/app/ /usr/share/nginx/html/
