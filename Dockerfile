FROM java:8

#install mycat
ADD http://dl.mycat.io/1.6-RELEASE/Mycat-server-1.6-RELEASE-20161028204710-linux.tar.gz /usr/local
RUN cd /usr/local && tar -zxvf Mycat-server-1.6-RELEASE-20161028204710-linux.tar.gz && rm -f Mycat-server-1.6-RELEASE-20161028204710-linux.tar.gz

VOLUME /usr/local/mycat/conf
EXPOSE 8066 9066
CMD ["/usr/local/mycat/bin/mycat", "console"]
