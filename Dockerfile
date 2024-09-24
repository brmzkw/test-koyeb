FROM alpine

COPY test.sh /
RUN /test.sh
