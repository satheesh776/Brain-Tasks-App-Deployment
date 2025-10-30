FROM public.ecr.aws/nginx/nginx:alpine

COPY dist/ /usr/share/nginx/html

RUN sed -i 's/listen 80;/listen 80;/' /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]

