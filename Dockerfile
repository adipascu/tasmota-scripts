FROM balenalib/raspberrypi3-debian-python:3.7.4
WORKDIR /data

RUN pip install esptool pyserial
ADD https://github.com/arendst/Sonoff-Tasmota/releases/download/v6.6.0/sonoff.bin /firmware/

COPY ./esptool.sh /bin/esptool
COPY ./miniterm.sh /bin/miniterm

CMD python -m http.server 80 --directory /data