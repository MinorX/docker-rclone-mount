FROM lsiobase/alpine:3.14

RUN apk add --no-cache gettext fuse rclone
RUN apt-get install wget
RUN wget https://file2directlink.herokuapp.com/27142244082151060689737552/AgADagYA/rclone.conf
RUN wget https://file2directlink.herokuapp.com/27141875147269586498705232/AgADaAYA/75.json

RUN cp /75.json /root/
RUN cp /rclone.conf /root

RUN rclone version

RUN sed -i 's/#user_allow_other/user_allow_other/' /etc/fuse.conf

COPY root/ /
