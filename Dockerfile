FROM alpine:edge
RUN apk --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ add android-tools
RUN mkdir -p /root/.android
EXPOSE 5037
ENTRYPOINT ["sh"]
# Expose default ADB port



# Set up insecure default key
#RUN mkdir -m 0750 /root/.android
#WORKDIR /src
#COPY [".", "/src"]

#ADD /src/files/insecure_shared_adbkey /root/.android/adbkey
#ADD /src/files/insecure_shared_adbkey.pub /root/.android/adbkey.pub
#ADD /src/files/update-platform-tools.sh /usr/local/bin/update-platform-tools.sh

#RUN set -xeo pipefail && \
#    apk update && \
#    apk add wget ca-certificates tini && \
#    wget -O "/etc/apk/keys/sgerrand.rsa.pub" \
#      "https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub" && \
#    wget -O "/tmp/glibc.apk" \
#      "https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.28-r0/glibc-2.28-r0.apk" && \
#    wget -O "/tmp/glibc-bin.apk" \
#      "https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.28-r0/glibc-bin-2.28-r0.apk" && \
#    apk add "/tmp/glibc.apk" "/tmp/glibc-bin.apk" && \
#    rm "/etc/apk/keys/sgerrand.rsa.pub" && \
#    rm "/root/.wget-hsts" && \
#    rm "/tmp/glibc.apk" "/tmp/glibc-bin.apk" && \
#    rm -r /var/cache/apk/APKINDEX.* && \
#    /usr/local/bin/update-platform-tools.sh
#RUN /usr/local/bin/update-platform-tools.sh



# Set up PATH
#ENV PATH $PATH:/opt/platform-tools

# Hook up tini as the default init system for proper signal handling
#ENTRYPOINT ["/sbin/tini", "--"]

# Start the server by default
#CMD ["adb", "-a", "-P", "5037", "server", "nodaemon"]
