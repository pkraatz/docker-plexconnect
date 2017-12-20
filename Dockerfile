FROM arm32v6/alpine:3.5
RUN apk -U add \
python \
py-pillow \
git \
shadow \
openssl \
bash \
&& rm -fr /var/cache/apk/*
VOLUME /PlexConnect
ADD /init /
CMD ["/init"]
EXPOSE 80
EXPOSE 443
EXPOSE 53
