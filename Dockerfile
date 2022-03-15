FROM alpine
COPY bin/ /usr/bin/
RUN /usr/bin/test
ENTRYPOINT [ "/usr/bin/test" ]