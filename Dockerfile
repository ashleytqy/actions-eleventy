FROM node:10-alpine
RUN npm install -g @11ty/eleventy @11ty/eleventy-plugin-syntaxhighlight http-server
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
