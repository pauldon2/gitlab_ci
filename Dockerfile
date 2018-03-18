# OS and version
FROM nginx:alpine

RUN rm /usr/share/nginx/html/index.html
ADD my.html /usr/share/nginx/html/index.html

# Open ports in docker (if you don't use start options -p 8880:8880 port will open randomly on base host)
EXPOSE 80/tcp

# Run nginx
CMD ["nginx","-g","daemon off;"]
##ENTRYPOINT ["/bin/bash"]
