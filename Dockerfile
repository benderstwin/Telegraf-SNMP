FROM telegraf:alpine
WORKDIR /app
LABEL Name=telegraf-snmp Version=0.0.1
RUN set -ex && \
apk update && apk add --no-cache --virtual net-snmp
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["telegraf"]
