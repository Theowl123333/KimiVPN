FROM ghcr.io/xtls/xray-core:latest
ENV PORT=8080
COPY config.json /etc/xray/config.json
CMD sed -i "s/8080/$PORT/g" /etc/xray/config.json && xray run -c /etc/xray/config.json
