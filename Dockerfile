FROM telegraf:alpine

RUN apk add --no-cache --virtual .build-deps net-snmp

EXPOSE 8125/udp 8092/udp 8094

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENV MIBDIRS=/etc/telegraf/mibs/
VOLUME ["/etc/telegraf/mibs/"]
ENTRYPOINT ["/entrypoint.sh"]
CMD ["telegraf"]