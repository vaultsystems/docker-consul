FROM gliderlabs/consul-agent:0.6
ADD ./config /config/
ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
