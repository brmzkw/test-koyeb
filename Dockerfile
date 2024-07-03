FROM nginx

ARG MY_BUILD_ARG

RUN echo "$MY_BUILD_ARG" > /tmp/build_arg
COPY ./entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
