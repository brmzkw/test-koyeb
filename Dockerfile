FROM nginx

ARG KOYEB_GIT_SHA

RUN echo $KOYEB_GIT_SHA > /root/storeme
