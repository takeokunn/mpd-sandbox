FROM ubuntu:latest

RUN apt-get update -qq
RUN apt-get install -y mpd pulseaudio

RUN groupadd mpd
RUN usermod -aG mpd,audio mpd

RUN mkdir -p /var/lib/mpd
RUN mkdir -p /var/lib/mpd/playlists
RUN mkdir -p /var/run/mpd

RUN chown -R mpd:mpd /var/lib/mpd
RUN chown -R mpd:mpd /var/run/mpd
