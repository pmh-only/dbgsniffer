FROM alpine

RUN apk add --no-cache tcpdump

ENTRYPOINT [ "tcpdump" ]
CMD [ \
  "-A", \
  "tcp and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)" \
]
